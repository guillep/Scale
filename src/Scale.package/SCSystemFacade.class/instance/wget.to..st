util - bash
wget: anUrl to: outFileReference
	"
		fetch a file from an url by using wget. and saving it in a given destination 
	"
	self
		call:
			('wget -qO- -O {tmp} {url}'
				format:
					{(#tmp -> outFileReference fullName).
					(#url -> anUrl)} asDictionary).
	^ outFileReference