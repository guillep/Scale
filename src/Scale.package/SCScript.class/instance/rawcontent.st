as yet unclassified
rawcontent
	| stream |
	^ rawcontent
		ifNil: [ stream := file readStream.
			rawcontent := stream contents lines.
			newLine := stream lineEndConvention.
			stream close.
			rawcontent ]