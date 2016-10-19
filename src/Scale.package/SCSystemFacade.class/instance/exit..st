utils - finalization
exit: aCode
	"
		It exits the image without saving, setting the given INTEGER code as exit code. 
		In the unix standar: 
			0 				 - Success
			OTHER-NUMBER - Code of error
	"

	aCode isInteger
		ifFalse: [ self error: 'wrong exit code: ' , aCode asString ].
	^ Smalltalk exit: aCode