#!/usr/bin/env scale

| scaleParentDirectory |

system stdout << 'Uninstalling scale' << String cr.

system saveImageAs: #/ asFileReference / #tmp / #'uninstall.image'.
" The image must be stored elsewhere for deleting all the files "

scaleParentDirectory := (system home / '.scale') asFileReference.

system stdout << 'Removing scale folder...' << String cr ; flush.

"Since we are removing ourselves, we are also removing system sources file.
FFI uses source code to generate ffi calls.
We need thus to patch some of the FFI calls to embed source code and work even in the absence of the source file."
(OSSUnixSystemAccessor>>#primitiveWaitpid:statusPointer:options:)
	embeddSourceInTrailer.

scaleParentDirectory exists ifTrue: [ 
	system call: 'rm -rf ', scaleParentDirectory fullName ].

system stdout << 'Done!' << String cr.
