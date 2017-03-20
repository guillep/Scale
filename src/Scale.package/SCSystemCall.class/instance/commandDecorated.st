private accessing
commandDecorated
	| calculatedArgs calculatedCommand |
	
	calculatedCommand := self command.
	self isNohup ifTrue: [ calculatedCommand := 'nohup ', calculatedCommand ].
	
	calculatedArgs := self arguments.
	self isBackground ifTrue: [ calculatedArgs := calculatedArgs copyWith: '&' ].
	
	^ self 
		concatCommand: calculatedCommand
		withArguments: calculatedArgs