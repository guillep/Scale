#!./build/scale-bootstrap


system stdout << 'Uninstalling scale' << String cr.


scapeParentDirectory := '/usr/bin/scale' asFileReference.
pharoParentDirectory := '/usr/bin/pharo' asFileReference.
scapeParentDirectory exists ifTrue: [ system call: ' rm -r ', scapeParentDirectory fullName  ].
pharoParentDirectory exists ifTrue: [  system call: ' rm -r ', pharoParentDirectory fullName ].

system stdout << 'Done!' << String cr.

