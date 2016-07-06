util - execute third pharo
execute: aString into: anImageBundle andSaveItAt: aDestination
	| script stream |
	script := (#/ asFileReference / #tmp / self hash asString , 'Script.st')
		ensureCreateFile;
		yourself.
	stream := script writeStream.
	stream
		nextPutAll:
			(' [{script}.] ensure: [Smalltalk saveAs: ''{destination}''.Smalltalk snapshot: true andQuit: true.]'
				format:
					{(#script -> aString).
					(#destination -> (aDestination / #Pharo) fullName)} asDictionary).
	stream
		flush;
		close.
	self
		call:
			(' {directory}/pharo-ui {directory}/Pharo.image st {script}'
				format:
					{(#directory -> anImageBundle directory fullName).
					(#script -> script fullName)} asDictionary).
	anImageBundle copyVMFilesTo: aDestination with: self.