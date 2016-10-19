util - execute third pharo
execute: aString into: anImageBundle andSaveItAt: aDestination
	| script stream |
	"
	 Executes a given string in an Image/VM bundle. Not suitable for fetching results. 
		- Generates a script with the given string 
		- It calls the vm with the st command line handler
		- The call is managed like a regular bash call. It will return the exit of the standar output.
	   - It does saves a copy of the image after the execution in the given destination. 	
	 "
	
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
			(' {directory}/pharo {directory}/Pharo.image st {script}'
				format:
					{(#directory -> anImageBundle directory fullName).
					(#script -> script fullName)} asDictionary).
	anImageBundle copyVMFilesTo: aDestination with: self.