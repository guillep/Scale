util - bash
chmod: aPermissionString to: aFileReferenceOrStringPattern
	"
		Chmod command for basic usage.
		Go to man chmod for more info about usage. 
	"

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