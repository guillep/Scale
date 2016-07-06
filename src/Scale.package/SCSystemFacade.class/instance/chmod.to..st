as yet unclassified
chmod: aPermissionString to: aFileReferenceOrStringPattern
	self
		call:
			('chmod {permission} {target}'
				format:
					{(#permission -> aPermissionString).
					(#target
						->
							(aFileReferenceOrStringPattern isString
								ifTrue: [ aFileReferenceOrStringPattern ]
								ifFalse: [ aFileReferenceOrStringPattern fullName ]))} asDictionary)