as yet unclassified
isWritable: aFileReference
	"protocol: as yet unclassified"

	| writable |
	[ (File named: aFileReference fullName) openForWrite close.
	writable := true ]
		on: Error
		do: [ writable := false ].
	^ writable and: [ aFileReference exists ]