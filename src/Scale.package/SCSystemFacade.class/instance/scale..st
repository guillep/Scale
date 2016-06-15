utils - call commands
scale: aScript
	aScript asFileReference exists
		ifTrue: [ ^ self call: self scalePath , ' ' , aScript ]
		ifFalse: [ self error: aScript , ' is not a valid file script. ' ]