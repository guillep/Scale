util - bash
unzip: aFileReference
	| dir |
	"
		Typical command for decompressing a regular tar+gunzip file on a temp directory on a temp directory 
	"
	dir := #/ asFileReference / #tmp / aFileReference hash asString.
	dir ensureCreateDirectory.
	^ self unzip: aFileReference to: dir