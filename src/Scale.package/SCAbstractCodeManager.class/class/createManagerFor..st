as yet unclassified
createManagerFor: aContent
	^ (self chooseManagerFor: aContent) new
		content: aContent;
		yourself