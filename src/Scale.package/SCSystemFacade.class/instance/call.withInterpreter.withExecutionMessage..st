private
call: aCommand withInterpreter: anInterpreter withExecutionMessage: anExecutionMessage
	| execution |
	execution := (self externalCallFor: aCommand withInterpreter: anInterpreter) perform: anExecutionMessage asSymbol.
	resultsWaited add: execution.
	^ execution