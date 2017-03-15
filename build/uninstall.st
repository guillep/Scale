#!/usr/bin/env scale

| scaleParentDirectory |

system stdout << 'Uninstalling scale' << String cr.

system saveImageAs: #/ asFileReference / #tmp / #'uninstall.image'.
" The image must be stored elsewhere for deleting all the files "

scaleParentDirectory := (system home / '.scale') asFileReference.

system stdout << 'Removing scale folder...' << String cr ; flush.
scaleParentDirectory exists ifTrue: [ system call: ' rm -rf ', scaleParentDirectory fullName ].

system stdout << 'Done!' << String cr.
