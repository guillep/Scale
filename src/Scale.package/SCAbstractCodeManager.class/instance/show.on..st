as yet unclassified
show: aScript on: a
	^ a pharoScript
		title: self title;
		display: aScript content;
		smalltalkClass: [ self runnerClass ];
		doItReceiver: [ self runnerInstance ];
		populate: #acceptedCode
			icon: GLMUIThemeExtraIcons glamorousAccept
			on: $s
			entitled: 'Accept'
			with: [ :text :script | 
				a update.
				script content: text text string.
				script save ]