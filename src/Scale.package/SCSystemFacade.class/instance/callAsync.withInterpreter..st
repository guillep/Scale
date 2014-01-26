private
callAsync: aCommand withInterpreter: anInterpreter

	| future |
	future := (self externalCallFor: aCommand withInterpreter: anInterpreter) doIt.
	resultsWaited add: future.
	^ future.