#!/usr/local/bin/scale

| scapeParentDirectory scaleX scaleuiX |

system stdout << 'Uninstalling scale' << String cr.

system saveImageAs: #/ asFileReference / #tmp / #'uninstall.image'.
" The image must be stored elsewhere for deleting all the files "

scaleX := '/usr/local/bin/scale' asFileReference.
scaleX exists ifTrue: [ system call: ' rm  ', scaleX fullName  ].
system stdout << 'Uninstalling executable scale' << String cr ; flush.

scaleuiX:='/usr/local/bin/scale-ui' asFileReference.
scaleuiX exists ifTrue: [ system call: ' rm  ', scaleuiX fullName  ].
system stdout << 'Uninstalling executable scale-ui' << String cr ; flush.

scapeParentDirectory := (system home / '.scale') asFileReference.

scapeParentDirectory exists ifTrue: [ system call: ' rm -rf ', scapeParentDirectory fullName  ].
system stdout << 'Removing scale folder' << String cr ; flush.

system stdout << 'Done!' << String cr.
