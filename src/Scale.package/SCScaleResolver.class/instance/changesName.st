as yet unclassified
changesName
	^ '{description}-{id}.{extention}'
		format:
			{(#id -> UUID new asString).
			(#description -> Smalltalk imagePath asFileReference parent basename).
			(#extention -> Smalltalk changesSuffix)} asDictionary 