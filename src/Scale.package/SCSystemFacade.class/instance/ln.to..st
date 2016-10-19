util - bash
ln: aTargetReference to: aLinkReference
	"
		ln command for symlink usage.
		Go to man ln for more info about usage. 
	"
	self
		call:
			(' ln -s {target} {linkname} '
				format:
					{(#target -> aTargetReference fullName).
					(#linkname -> aLinkReference fullName)} asDictionary)