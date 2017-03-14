#!/usr/local/bin/scale

| scapeParentDirectory scaleX scaleuiX |

system stdout << 'Uninstalling scale' << String cr.

system saveImageAs: #/ asFileReference / #tmp / #'uninstall.image'.
" The image must be stored elsewhere for deleting all the files "

scapeParentDirectory := (system home / '.scale') asFileReference.

scapeParentDirectory exists ifTrue: [ system call: ' rm -rf ', scapeParentDirectory fullName  ].
system stdout << 'Removing scale folder' << String cr ; flush.

system stdout << 'Done!' << String cr.
