as yet unclassified
compose
	"self new openOn: GLMBasicExamples"

	self tabulator with: [:browser | 
		browser
			column: #titles;
			column: #example span: 4.
		browser transmit
			to: #titles;
			andShow: [ : a | self scriptListIn: a ].
		browser transmit
			to: #example;
			fromOutsidePort: #entity;
			from: #titles;
			andShow: [ :a | self scriptIn: a ] ]