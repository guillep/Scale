activation
loadSourceFiles: anArray
	sourceFiles := (anArray
		select: [ :each | each asFileReference exists ]
		thenCollect: [ :each | each asFileReference ])
		,
			(anArray
				select: [ :each | ((OSEnvironment current at: 'PWD') asFileReference / each) exists ]
				thenCollect: [ :each | (OSEnvironment current at: 'PWD') asFileReference / each ])