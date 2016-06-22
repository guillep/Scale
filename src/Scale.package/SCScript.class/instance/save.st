as yet unclassified
save
	| writeStream |
	file truncateTo: 0.
	writeStream := file writeStream.
	writeStream nextPutAll: (self newLine join: rawcontent).
	writeStream
		flush;
		close