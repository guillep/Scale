as yet unclassified
compose
	"self new openOn: GLMBasicExamples"

	self tabulator
		with: [ :browser | 
			browser
				row: #scriptdir size: 30;
				row: [ :r | 
					r
						column: [ :c | c row: #buttons ] size: 150;
						column: #toolbar span: 2 ]
					size: 40;
				row: [ :r | 
					r
						column: #titles size: 150;
						column: #example span: 4 ].
			browser transmit
				to: #buttons;
				andShow: [ :a :b | a actionList act: [ :container :dir | self createNewScript: dir ] entitled: 'New' ].
			browser transmit
				to: #scriptdir;
				andShow: [ :a :b | a label display: b fullName ].
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
						act: [ :container :dir :script | script debug ] entitled: 'Debug';
						act: [ :container :dir :script | self deleteScript: script ] entitled: 'Delete' ] ]