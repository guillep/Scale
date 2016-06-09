utils - service process
repeat: aBlock each: aDelay
	| jobExecution |
	
	jobExecution := ((SCBlockRatedRunner new
				block: aBlock;
				delay: aDelay) -> #spinOnce) tkt
				inALocalProcess;
				loopingService;
				start.
	^ resultsWaited
		add:jobExecution 