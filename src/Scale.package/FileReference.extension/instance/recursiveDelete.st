*Scale
recursiveDelete
	self isDirectory
		ifTrue: [ self entries do: [ :e | e asFileReference recursiveDelete ] ].
	self delete.