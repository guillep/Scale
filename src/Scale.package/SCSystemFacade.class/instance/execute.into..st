util - execute third pharo
execute: aString into: anImageBundle
	| script stream |
	"
	 Executes a given string in an Image/VM bundle. Not suitable for fetching results. 
		- Generates a script with the given string 
		- It calls the vm with the st command line handler
		- The call is managed like a regular bash call. It will return the exit of the standar output.
	   - It does not save the image after the execution. 	
	 "
	
	script := #/ asFileReference / #tmp / UUID new asString , 'Script.st'.
	script exists
		ifTrue: [ script delete ].
	script
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
					(#script -> script fullName)} asDictionary)