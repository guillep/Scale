activation
activate
	self activateHelp ifTrue: [ self exitSuccess ].
	self activateVersion ifTrue: [ self exitSuccess ].
	
	self commandLine arguments size = 0
		ifTrue: [ self roll ]
		ifFalse: [ self executeScripts ].
	self exitSuccess