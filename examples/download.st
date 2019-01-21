#!/usr/bin/env scale
| version  |

version := (system optionAt: #v ifAbsent: [ 70 ]) asInteger.
system stdout
	<< 'Downloading '
	<< version asString
	<< ' into: '
	<< system pwd fullName
	; flush.

system loadPharo: version into: system pwd.