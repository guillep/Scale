private
externalExecFor: aCommand withInterpreter: anInterpreter
	^ (self buildCommandSpecFor: aCommand withInterpreter: anInterpreter) asOSVerboseTask future