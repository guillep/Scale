private
externalCallFor: aCommand withInterpreter: anInterpreter
	^ (self buildCommandSpecFor: aCommand withInterpreter: anInterpreter) asOSTask future