utils
arguments
	^ OSProcess thisOSProcess arguments size > 2
		ifTrue: [ OSProcess thisOSProcess arguments allButFirst: 2 ]
		ifFalse: [ {} ]