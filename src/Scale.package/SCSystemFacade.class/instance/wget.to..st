as yet unclassified
wget: anUrl to: outFileReference
	self
		call:
			('wget -qO- -O {tmp} {url}'
				format:
					{(#tmp -> outFileReference fullName).
					(#url -> anUrl)} asDictionary).
	^ outFileReference