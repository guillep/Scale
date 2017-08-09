#!/usr/bin/env scale

| scaleParentDirectory pharoParentDirectory scaleFile scaleUIFile |

" Scale deployment. "

system stdout << 'Deploying scale command...'; cr.

scaleParentDirectory := (system home / '.scale' / 'scale') asFileReference.
pharoParentDirectory := (system home / '.scale' / 'pharo') asFileReference.

scaleParentDirectory exists 
ifTrue: [ 
	system stderr << 'There is already an installation. Please uninstall before.'
] ifFalse: [
	scaleParentDirectory ensureCreateDirectory.
	scaleFile := scaleParentDirectory  / 'scale'.
	scaleUIFile := scaleParentDirectory / 'scale-ui'.
	system workingDirectory / 'scale' copyTo: scaleFile.
	system workingDirectory / 'scale-ui' copyTo: scaleUIFile.
	system workingDirectory / 'build' / 'uninstall.st' copyTo: scaleParentDirectory / 'uninstall.st'.

	system stdout << 'Deploying Pharo...'; cr.

	pharoParentDirectory ensureCreateDirectory.
	#( 'pharo' 'pharo-vm' 'pharo-ui' )
		do: [ :file | system workingDirectory / 'cache' / file  copyAllTo: pharoParentDirectory / file ].

	#( 'Pharo.image' 'Pharo.changes' )
		do: [ :file | system workingDirectory / 'cache' / file  copyAllTo: scaleParentDirectory / file ].

	system stdout << 'Giving execute permissions...'; cr.

	system call: 'chmod +x ', (pharoParentDirectory / 'pharo') fullName.
	system call: 'chmod +x ', (pharoParentDirectory / 'pharo-ui') fullName.
	
	OSPlatform current isUnix ifTrue: [
		system call: 'chmod +x ', (pharoParentDirectory / 'pharo-vm/pharo') fullName.
	].
	
	OSPlatform current isMacOSX ifTrue: [
		system call: 'chmod +x ', (pharoParentDirectory / 'pharo-vm/Pharo.app/Contents/MacOS/pharo') fullName.
	].
	
	system call: 'chmod +x ', (scaleParentDirectory / 'uninstall.st') fullName.
	system call: 'chmod +x ', scaleFile fullName.
	system call: 'chmod +x ', scaleUIFile fullName.
	system stdout << 'Successfully installed Scale! Now, add the Scale binaries to your $PATH:'; cr.
	system stdout << ('export PATH="{1}:$PATH"' format: { ('$HOME/', '.scale/', 'scale') }); cr.
].
