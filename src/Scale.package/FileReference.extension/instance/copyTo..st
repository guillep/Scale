*Scale
copyTo: aReference
	self isDirectory
		ifTrue: [ aReference ensureCreateDirectory.
			self entries
				do: [ :e | e asFileReference copyTo: aReference  / e basename ] ]
		ifFalse: [ filesystem = aReference fileSystem
				ifTrue: [ filesystem copy: path to: aReference resolve path ]
				ifFalse: [ filesystem copy: path toReference: aReference ] ]