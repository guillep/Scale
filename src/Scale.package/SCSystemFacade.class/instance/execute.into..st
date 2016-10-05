util - execute third pharo
execute: aString into: anImageBundle
	| script stream |
	script := (#/ asFileReference / #tmp / self hash asString , 'Script.st')
		ensureCreateFile;
		yourself.
	stream := script writeStream.
	stream nextPutAll: (' [{script}.] ensure: [Smalltalk snapshot: false andQuit: true.]' format: {(#script -> aString)} asDictionary).
	stream
		flush;
		close.
	self
		call:
			(' {directory}/pharo {directory}/Pharo.image st {script}'
				format:
					{(#directory -> anImageBundle directory fullName).
					(#script -> script fullName)} asDictionary).
