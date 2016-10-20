#!/usr/bin/scale
	| version destination |
	
	version := 50. 
	destination := system pwd.
	
	version := (system arguments optionAt: #v ifAbsent: [ 50 ]) asInteger.
	destination := system arguments optionAt: #d ifPresent: [: op | op asFileReference ]ifAbsent: [ system pwd ].
	system stdout << 'Downloading ' << version asString << ' into: ' << destination fullName; flush.
	system loadPharo: version into: destination.