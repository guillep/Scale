activation
loadSourceFiles: anArray
	sourceFiles := anArray
		collect: [ :each | 
			each asFileReference exists
				ifTrue: [ each asFileReference ]
				ifFalse: [ | relative |
					relative := (OSEnvironment current at: 'PWD') asFileReference / each.
					relative exists
						ifTrue: [ relative ]
						ifFalse: [ self error: 'CANNOT FIND FILE ' , each ] ] ]