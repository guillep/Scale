as yet unclassified
compose
	"self new openOn: GLMBasicExamples"

	self tabulator
		with: [ :browser | 
			browser
				row: [ :r | 
					r
						column: #scriptdir;
						column: #toolbar span: 4 ]
					size: 40;
				row: [ :r | 
					r
						column: #titles;
						column: #example span: 4 ].
			browser transmit
				to: #scriptdir;
				andShow: [ :a :b | a label display: b ].
			browser transmit
				to: #titles;
				andShow: [ :a | self scriptListIn: a ].
			browser transmit
				to: #example;
				fromOutsidePort: #entity;
				from: #titles;
				andShow: [ :a | self scriptIn: a ].
			browser transmit
				to: #toolbar;
				fromOutsidePort: #entity;
				from: #titles;
				andShow: [ :a | 
					a actionList
						act: [ :container :dir :script | script run ] entitled: 'Run';
						act: [ :container :dir :script | script debug ] entitled: 'Debug' ] ]