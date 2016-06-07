activation
activate
	self activateHelp.
	self commandLine arguments size = 0
		ifTrue: [ self logCr: 'Loading REPL.'.
			RORepl default
				fullRepl;
				loop ]
		ifFalse: [ self loadSourceFiles: self commandLine arguments.
			self installSourceFiles.
			FileStream stdout cr ].
	self exitSuccess