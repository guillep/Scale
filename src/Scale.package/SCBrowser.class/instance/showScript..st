as yet unclassified
showScript: aScript
	| browser stream fileContent |
	stream := (aScript openWritable: false) readStream.
	fileContent := stream upToEnd.
	stream close.
	browser := GLMTabulator new.
	browser row: #code span: 2.
	browser transmit
		to: #code;
		andShow: [ :a :content | (SCAbstractCodeManager createManagerFor: content) showOn: a ].
	^ browser startOn: fileContent