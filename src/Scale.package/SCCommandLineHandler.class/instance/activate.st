activation
activate

	self activateHelp.
	self loadSourceFiles: self commandLine arguments.
	self installSourceFiles.
	FileStream stdout cr.
	self exitSuccess.