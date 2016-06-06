as yet unclassified
call: aCommand withInterpreter: anInterpreter withExecutionMessage: anExecutionMessage
	| execution |
	execution := (self externalCallFor: aCommand withInterpreter: anInterpreter) perform: anExecutionMessage asSymbol.
	(execution isKindOf: TKTAsyncExecution)
		ifTrue: [ resultsWaited add: execution ].
	^ execution