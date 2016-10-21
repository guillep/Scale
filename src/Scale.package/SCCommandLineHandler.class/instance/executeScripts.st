activation
executeScripts
	(Smalltalk isInteractive
		and: [ self commandLine arguments size = 1
				and: [ self manageInteractive: self commandLine arguments ] ])
		ifFalse: [ self loadSourceFiles: self commandLine arguments.
			self installSourceFiles.
			FileStream stdout cr ]