private
privateExec: aCommand withInterpreter: anInterpreter
	| future |
	future := self externalExecFor: aCommand withInterpreter: anInterpreter.
	resultsWaited add: future.
	^ future