#!./build/scale-bootstrap

system stdout << 'Deploying scale command';cr.

scapeParentDirectory := '/usr/bin/scale' asFileReference.
scapeParentDirectory ensureDirectory.
scaleFile := scapeParentDirectory / 'pharo'.
'scale' asFileReference copyTo: scaleFile.

system stdout << 'Deploying Pharo';cr.

pharoParentDirectory := '/usr/bin/pharo' asFileReference.
pharoParentDirectory ensureDirectory.
#( 'pharo' 'pharo-vm' 'pharo-ui' 'Pharo.image' 'Pharo.changes')
	do: [ :file | file asFileReference copyAllTo: pharoParentDirectory / file ].

system stdout << 'Giving permissions to run';cr.

system call: 'chmod +x ', (pharoParentDirectory / 'pharo') fullName.
system call: 'chmod +x ', (pharoParentDirectory / 'pharo-vm/Pharo.app/Contents/MacOS/Pharo') fullName.
system call: 'chmod +x ', scaleFile fullName.

system stdout << 'Done!'.