#!/usr/bin/scale
	| version  |
	
	version := (system arguments optionAt: #v ifAbsent: [ 50 ]) asInteger.
	system stdout << 'Downloading ' << version asString << ' into: ' << system pwd fullName; flush.
	system loadPharo: version into: system pwd.
