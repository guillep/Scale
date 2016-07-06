as yet unclassified
wget: anURL andUnzip: aDestination
	self wget: anURL to: ('/tmp/' , anURL hash asString , '.zip') asFileReference.
	self unzip: ('/tmp/' , anURL hash asString , '.zip') asFileReference to: aDestination.
	^ aDestination 