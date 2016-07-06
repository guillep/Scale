as yet unclassified
unzip: aFileReference to: aDestinationReference
	self
		call:
			('unzip {tmp} -d {destination}'
				format:
					{(#tmp -> aFileReference fullName).
					(#destination -> aDestinationReference)} asDictionary).
	^ aDestinationReference