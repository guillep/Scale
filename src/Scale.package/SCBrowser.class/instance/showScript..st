as yet unclassified
showScript: aScript
	| browser |
	browser := GLMTabulator new.
	browser row: #code span: 2.
	browser transmit
		to: #code;
		andShow: [ :a :script | script showOn: a ].
	^ browser startOn: aScript