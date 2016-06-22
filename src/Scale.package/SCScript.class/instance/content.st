as yet unclassified
content
	^ String crlf join: (content ifNil: [ content := self rawcontent select: [ :l | (l indexOfSubCollection: '#!') = 0 ] ])