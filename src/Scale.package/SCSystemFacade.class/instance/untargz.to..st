as yet unclassified
untargz: aFileReference to: aDestinationReference
	self
		call:
			('tar -xzf {tmp}.tgz -C {destination}'
				format:
					{(#tmp -> aFileReference fullName).
					(#destination -> aDestinationReference)} asDictionary).
	^ aDestinationReference