as yet unclassified
deleteScript: script
	(UIManager default confirm: 'Are you sure?')
		ifTrue: [ script delete ].
	self update. 