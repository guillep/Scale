private
scalePath
	| path |
	path := '/usr/bin/scale/scale'.
	path asFileReference exists
		ifTrue: [ ^ path ]
		ifFalse: [ self error: path , ' not found' ]