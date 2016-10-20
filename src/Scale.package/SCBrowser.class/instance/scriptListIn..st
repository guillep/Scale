as yet unclassified
scriptListIn: a
	| list |
	list := a list
		title: 'Scripts';
		display: [ :dir | self fetchScriptReferencesFrom: dir ];
		sorted: [ :x :y | x basename < y basename ];
		format: [ :each | each basename ].
	^ list