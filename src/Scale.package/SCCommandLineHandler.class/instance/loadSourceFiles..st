activation
loadSourceFiles: anArray
	| sourceRelativeToPWD sourceReference |
	sourceRelativeToPWD := ScaleStore useDuring: [ anArray first asFileReference fullName ].
	sourceReference := sourceRelativeToPWD asFileReference.
	sourceReference exists ifFalse: [ 
		self error: 'File ', sourceReference fullName, ' does not exist.' ].
	sourceFiles := { sourceReference }