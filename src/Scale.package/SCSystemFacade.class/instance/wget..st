as yet unclassified
wget: anUrl 
	^ self wget: anUrl to: ('/tmp/',anUrl hash asString, '.tmp') asFileReference.
	