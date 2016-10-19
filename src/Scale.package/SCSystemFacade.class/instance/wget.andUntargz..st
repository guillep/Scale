util - bash
wget: anURL andUntargz: aDestination

	"
		fetch a file from an url by using wget. 
		And saving it in a temporal destination and it tries to decompressit from a tar-gz format
	"


	self wget: anURL to: ('/tmp/' , anURL hash asString , '.tgz') asFileReference.
	self untargz: ('/tmp/' , anURL hash asString , '.tgz') asFileReference to: aDestination.
	^ aDestination 