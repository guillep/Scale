private
privateCall: aCommand withInterpreter: anInterpreter
	| future |
	future := self externalCallFor: aCommand withInterpreter: anInterpreter.
	resultsWaited add: future.
	^ future