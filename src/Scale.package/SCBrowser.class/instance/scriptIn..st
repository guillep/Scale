as yet unclassified
scriptIn: composer
	| dynamicPresentation |
	dynamicPresentation := composer dynamic
		title: 'Browser';
		display: [ :folder :script | self showScript: script. ].
	