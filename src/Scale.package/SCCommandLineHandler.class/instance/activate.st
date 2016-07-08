activation
activate
	self activateHelp
		ifTrue: [ self exitSuccess ].
	self activateVersion
		ifTrue: [ self exitSuccess ].
	self commandLine arguments size = 0
		ifTrue: [ Smalltalk isInteractive
				ifFalse: [ self roll ] ]
		ifFalse: [ self executeScripts ].
	runner shouldSaveAfterRun
		ifTrue: [ Smalltalk snapshot: true andQuit: false ].
	self exitSuccess