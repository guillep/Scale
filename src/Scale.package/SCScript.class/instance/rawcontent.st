as yet unclassified
rawcontent
	| stream |
	^ rawcontent
		ifNil: [ stream := file readStream.
			rawcontent := stream contents lines.
			newLine := #crlf.
			stream close.
			rawcontent ]