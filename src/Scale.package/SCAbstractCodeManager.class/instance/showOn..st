as yet unclassified
showOn: a
	^ a pharoScript
		title: self title;
		display: self content;
		smalltalkClass: [ self runnerClass ];
		doItReceiver: [ self runnerInstance ]