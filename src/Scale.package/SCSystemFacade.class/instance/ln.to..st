as yet unclassified
ln: aTargetReference to: aLinkReference
	self
		call:
			(' ln -s {target} {linkname} '
				format:
					{(#target -> aTargetReference fullName).
					(#linkname -> aLinkReference fullName)} asDictionary)