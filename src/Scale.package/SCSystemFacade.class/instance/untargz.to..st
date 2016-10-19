util - bash
untargz: aFileReference to: aDestinationReference
	"
		Typical command for decompressing a regular tar+gunzip file 
	"
	self
		call:
			('tar -xzf {tmp}.tgz -C {destination}'
				format:
					{(#tmp -> aFileReference fullName).
					(#destination -> aDestinationReference)} asDictionary).
	^ aDestinationReference