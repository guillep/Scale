as yet unclassified
unzip: aFileReference
	| dir |
	dir := #/ asFileReference / #tmp / aFileReference hash asString.
	dir ensureCreateDirectory.
	^ self unzip: aFileReference to: dir