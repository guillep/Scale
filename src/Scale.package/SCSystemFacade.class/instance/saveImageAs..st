utils - image
saveImageAs: aFileReference
	" 
		This method allows to create copies of the working image of the scale program. 
		This is useful for making extentions to this framework by adding more handlers or useful methods
	"
	Smalltalk saveAs: aFileReference fullName.
	SCScaleResolver default reset.