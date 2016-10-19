util - bash
wget: anURL andUnzip: aDestination
	"
		fetch a file from an url by using wget. 
		And saving it in a temporal destination and it tries to decompressit from a zip format
	"

	self wget: anURL to: ('/tmp/' , anURL hash asString , '.zip') asFileReference.
	self unzip: ('/tmp/' , anURL hash asString , '.zip') asFileReference to: aDestination.
	^ aDestination 