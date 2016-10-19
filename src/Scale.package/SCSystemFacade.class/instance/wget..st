util - bash
wget: anUrl 
	"
		fetch a file from an url by using wget. and saving it in a temporal destination 
	"

	^ self wget: anUrl to: ('/tmp/',anUrl hash asString, '.tmp') asFileReference.
	