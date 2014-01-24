private
waitEndOf: process
	
	[ process isComplete ] whileFalse: [ (Delay forMilliseconds: 15) wait ]