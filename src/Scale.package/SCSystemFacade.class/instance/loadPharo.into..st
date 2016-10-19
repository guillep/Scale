util - load pharo
loadPharo: aVersion into: aFileReference

	"
		This method ask for a synchronous download of a pharo bundle (image+vm), 
		for a given version and it stores this bundle in a given directory. 
		If the directory does not exists, it creates it.
	"

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