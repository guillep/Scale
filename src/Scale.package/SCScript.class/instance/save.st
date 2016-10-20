as yet unclassified
save
	| writeStream |
	writeStream := file writeStream.
	
	writeStream
		truncate; 
		nextPutAll: (self newLine join: rawcontent).
		
	writeStream
		flush;
		close