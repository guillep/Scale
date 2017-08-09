activation
loadSourceFiles: anArray

	sourceFiles := anArray collect: [ :each | | path ref |
		path := each asFileReference path.
		path isAbsolute ifFalse: [ 
			path := self toAbsolutePathInPWD: path ].
		ref := path asFileReference.
		
		ref exists ifFalse: [ 
			self error: 'File ', path fullName, ' does not exist.' ].
		ref
	]