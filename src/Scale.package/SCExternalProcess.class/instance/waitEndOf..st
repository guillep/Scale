private
waitEndOf: osProcess
	
	[ osProcess isComplete ] whileFalse: [ (Delay forMilliseconds: 15) wait ]