private
call: aCommand withInterpreter: anInterpreter
	^ self call: aCommand withInterpreter: anInterpreter withExecutionMessage: #executeSync