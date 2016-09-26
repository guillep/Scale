private
call: aCommand withInterpreter: anInterpreter
	^ (self privateCall: aCommand withInterpreter: anInterpreter) synchronizeTimeout: 10 seconds