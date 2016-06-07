#!./build/scale-bootstrap

" DEPLOY "
system stdout << 'Deploying scale command';cr.

scapeParentDirectory := '/usr/bin/scale' asFileReference.

scapeParentDirectory exists 
ifTrue: [ 
	system stderr << 'There is already an installation. Please uninstall before' 
] ifFalse: [
	scapeParentDirectory ensureCreateDirectory.
	scaleFile := scapeParentDirectory / 'scale'.
	scaleUIFile := scapeParentDirectory / 'scale-ui'.
	system workingDirectory / '..' / 'scale'  copyTo: scaleFile.
	system workingDirectory / '..' / 'scale-ui'  copyTo: scaleUIFile.
	system stdout << 'Deploying Pharo';cr.

	pharoParentDirectory := '/usr/bin/pharo' asFileReference.
	pharoParentDirectory ensureCreateDirectory.
	#( 'pharo' 'pharo-vm' 'pharo-ui' 'Pharo.image' 'Pharo.changes')
		do: [ :file | system workingDirectory / file  copyAllTo: pharoParentDirectory / file ].

	system stdout << 'Giving permissions to run';cr.

	system call: 'chmod +x ', (pharoParentDirectory / 'pharo') fullName.
	system call: 'chmod +x ', (pharoParentDirectory / 'pharo-ui') fullName.
	system call: 'chmod +x ', (pharoParentDirectory / 'pharo-vm/pharo') fullName.
	system call: 'chmod +x ', scaleFile fullName.
	system call: 'chmod +x ', scaleUIFile fullName.
	system stdout << 'Done!'.

" ADD TO THE PATH "
	system call: ' echo "export PATH=$PATH:/usr/bin/scale" >> ~/.bashrc '.
].


