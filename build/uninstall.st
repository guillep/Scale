#!./build/scale-bootstrap


system stdout << 'Uninstalling scale' << String cr.


scapeParentDirectory := '/usr/bin/scaleImage' asFileReference.
pharoParentDirectory := '/usr/bin/pharo' asFileReference.
scapeParentDirectory exists ifTrue: [ system call: ' rm -r ', scapeParentDirectory fullName  ].
pharoParentDirectory exists ifTrue: [  system call: ' rm -r ', pharoParentDirectory fullName ].

scaleX := '/usr/bin/scale' asFileReference.
scaleuiX:='/usr/bin/scale-ui' asFileReference.
scaleX exists ifTrue: [ system call: ' rm  ', scaleX fullName  ].
scaleuiX exists ifTrue: [ system call: ' rm  ', scaleuiX fullName  ].

system stdout << 'Done!' << String cr.

