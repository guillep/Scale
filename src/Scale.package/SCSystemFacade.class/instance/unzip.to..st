util - bash
unzip: aFileReference to: aDestinationReference
	"
		Typical command for decompressing a regular zip file 
	"
	self
		call:
			('unzip {tmp} -d {destination}'
				format:
					{(#tmp -> aFileReference fullName).
					(#destination -> aDestinationReference)} asDictionary).
	^ aDestinationReference