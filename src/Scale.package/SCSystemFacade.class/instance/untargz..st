util - bash
untargz: aFileReference
	| dir |
	"
		Typical command for decompressing a regular tar+gunzip file on a temp directory 
	"
	dir := #/ asFileReference / #tmp / aFileReference hash asString.
	dir ensureCreateDirectory.
	^ self untargz: aFileReference to: dir