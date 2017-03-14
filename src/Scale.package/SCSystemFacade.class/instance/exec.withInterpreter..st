private
exec: aCommand withInterpreter: anInterpreter
	^ (self privateExec: aCommand withInterpreter: anInterpreter) synchronizeTimeout: self defaultTimeout