util - load pharo
loadPharo: aVersion into: aFileReference
	aFileReference ensureCreateDirectory.
	self assert: aFileReference isDirectory.
	self assert: aVersion isNumber.
	self
		call:
			(' cd {directory} ; wget -O- get.pharo.org/{version}+vm | bash'
				format:
					{(#directory -> aFileReference fullName).
					(#version -> aVersion asString)} asDictionary).
	^ SCImageBundle
		new
		directory: aFileReference;
		yourself