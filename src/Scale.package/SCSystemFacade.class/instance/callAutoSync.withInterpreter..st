private
callAutoSync: aCommand withInterpreter: anInterpreter
	^ self call: aCommand withInterpreter: anInterpreter withExecutionMessage: #executeAutoSync