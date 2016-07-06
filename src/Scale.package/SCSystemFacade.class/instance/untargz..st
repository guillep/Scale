as yet unclassified
untargz: aFileReference
	| dir |
	dir := #/ asFileReference / #tmp / aFileReference hash asString.
	dir ensureCreateDirectory.
	^ self untargz: aFileReference to: dir