as yet unclassified
wget: anURL andUntargz: aDestination
	self wget: anURL to: ('/tmp/' , anURL hash asString , '.tgz') asFileReference.
	self untargz: ('/tmp/' , anURL hash asString , '.tgz') asFileReference to: aDestination.
	^ aDestination 