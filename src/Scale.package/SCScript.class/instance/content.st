as yet unclassified
content
	^ String crlf join: (self rawcontent select: [ :l | (l indexOfSubCollection: '#!') = 0 ])