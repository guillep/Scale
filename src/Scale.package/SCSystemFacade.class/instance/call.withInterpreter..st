private
call: aCommand withInterpreter: anInterpreter
	^ (self privateCall: aCommand withInterpreter: anInterpreter) synchronizeTimeout: self defaultTimeout