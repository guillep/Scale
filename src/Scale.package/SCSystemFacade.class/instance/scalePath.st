private
scalePath
	| path |
	path := '/usr/bin/scale/pharo'.
	path asFileReference exists
		ifTrue: [ ^ path ]
		ifFalse: [ self error: path , ' not found' ]