as yet unclassified
save
	| writeStream |
	writeStream := file writeStream.
	writeStream nextPutAll: (self newLine join: rawcontent).
	writeStream
		flush;
		close