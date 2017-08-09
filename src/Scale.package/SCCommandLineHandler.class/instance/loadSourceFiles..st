activation
loadSourceFiles: anArray

	"This method verifies the requested files exist.
	We only take the first argument.
	The rest of the arguments are arguments of the script"
	| scriptName path ref |
	scriptName := anArray first.
	path := scriptName asFileReference path.
	path isAbsolute ifFalse: [ 
		path := self toAbsolutePathInPWD: path ].
	ref := path asFileReference.
	
	ref exists ifFalse: [ 
		self error: 'File ', path fullName, ' does not exist.' ].
	
	sourceFiles := { ref }