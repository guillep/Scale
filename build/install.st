#!/usr/bin/env scale

| scaleParentDirectory pharoParentDirectory scaleFile scaleUIFile sources |

" Scale deployment. "

system logCr:'Deploying scale command...'.

scaleParentDirectory := (system home / '.scale' / 'scale') asFileReference.
pharoParentDirectory := (system home / '.scale' / 'pharo') asFileReference.

scaleParentDirectory exists 
ifTrue: [ 
	system logCr:'There is already an installation. Please uninstall before.'
] ifFalse: [
	scaleParentDirectory ensureCreateDirectory.
	scaleFile := scaleParentDirectory  / 'scale'.
	scaleUIFile := scaleParentDirectory / 'scale-ui'.
	
	system workingDirectory / 'scale' copyTo: scaleFile.
	system workingDirectory / 'scale-ui' copyTo: scaleUIFile.
	system workingDirectory / 'build' / 'uninstall.st' copyTo: scaleParentDirectory / 'uninstall-scale.st'.

	system logCr:'Deploying Pharo...'.

	pharoParentDirectory ensureCreateDirectory.
	#( 'pharo' 'pharo-vm' 'pharo-ui' )
		do: [ :file | system workingDirectory / 'cache' / file  copyAllTo: pharoParentDirectory / file ].

	#( 'Pharo.image' 'Pharo.changes' )
		do: [ :file | system workingDirectory / 'cache' / file  copyAllTo: scaleParentDirectory / file ].

	sources := ((system workingDirectory / #cache) entries detect: [ : e | e fullName endsWith: '.sources' ])  asFileReference.
	sources copyAllTo: scaleParentDirectory / sources basename.
									 
	system logCr:'Giving execute permissions...'.

	system call: 'chmod +x ', (pharoParentDirectory / 'pharo') fullName.
	system call: 'chmod +x ', (pharoParentDirectory / 'pharo-ui') fullName.
 	
	OSPlatform current isUnix ifTrue: [
		system call: ('chmod +x -R ', (pharoParentDirectory / 'pharo-vm/') fullName, '/*').
	].
	
	OSPlatform current isMacOSX ifTrue: [
		system call: 'chmod +x ', (pharoParentDirectory / 'pharo-vm/Pharo.app/Contents/MacOS/pharo') fullName.
	].
	
	system call: 'chmod +x ', (scaleParentDirectory / 'uninstall-scale.st') fullName.
	system call: 'chmod +x ', scaleFile fullName.
	system call: 'chmod +x ', scaleUIFile fullName.
	system logCr: 'Successfully installed Scale. Now, add the Scale binaries to your $PATH:'.
	system logCr: ('export PATH="{1}:$PATH"' format: { ('$HOME/', '.scale/', 'scale') }).
].
