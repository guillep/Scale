#!./build/scale-bootstrap

" DEPLOY "
system stdout << 'Deploying scale command';cr.

scaleParentDirectory := '/usr/bin/scaleImage' asFileReference.

scaleParentDirectory exists 
ifTrue: [ 
	system stderr << 'There is already an installation. Please uninstall before' 
] ifFalse: [
	scaleParentDirectory ensureCreateDirectory.
	scaleFile := scaleParentDirectory / '..' / 'scale'.
	scaleUIFile := scaleParentDirectory / '..' / 'scale-ui'.
	system workingDirectory / '..' / 'scale'  copyTo: scaleFile.
	system workingDirectory / '..' / 'scale-ui'  copyTo: scaleUIFile.
	system stdout << 'Deploying Pharo';cr.

	pharoParentDirectory := '/usr/bin/pharo' asFileReference.
	pharoParentDirectory ensureCreateDirectory.
	#( 'pharo' 'pharo-vm' 'pharo-ui')
		do: [ :file | system workingDirectory / file  copyAllTo: pharoParentDirectory / file ].

	#( 'Pharo.image' 'Pharo.changes')
		do: [ :file | system workingDirectory / file  copyAllTo: scaleParentDirectory / file ].

	
	system stdout << 'Giving permissions to run';cr.

	system call: 'chmod +x ', (pharoParentDirectory / 'pharo') fullName.
	system call: 'chmod +x ', (pharoParentDirectory / 'pharo-ui') fullName.
	system call: 'chmod +x ', (pharoParentDirectory / 'pharo-vm/pharo') fullName.
	system call: 'chmod +x ', scaleFile fullName.
	system call: 'chmod +x ', scaleUIFile fullName.
	system stdout << 'Done!'.


].


