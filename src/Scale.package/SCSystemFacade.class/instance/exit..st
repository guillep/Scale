utils
exit: aCode
	aCode isInteger
		ifFalse: [ self error: 'wrong exit code: ' , aCode asString ].
	^ Smalltalk exit: aCode