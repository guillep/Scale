as yet unclassified
show: content on: a
	^ a pharoScript
		title: self title;
		display: content;
		smalltalkClass: [ self runnerClass ];
		doItReceiver: [ self runnerInstance ]