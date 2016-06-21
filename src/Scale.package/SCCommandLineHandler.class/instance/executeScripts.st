activation
executeScripts
	self loadSourceFiles: self commandLine arguments.
	self installSourceFiles.
	FileStream stdout cr