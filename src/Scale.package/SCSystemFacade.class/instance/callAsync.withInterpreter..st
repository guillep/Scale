private
callAsync: aCommand withInterpreter: anInterpreter

	| future |
	future := (self externalCallFor: aCommand withInterpreter: anInterpreter) shootIt.
	resultsWaited add: future.
	^ future.