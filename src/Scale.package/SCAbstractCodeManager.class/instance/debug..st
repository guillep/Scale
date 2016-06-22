as yet unclassified
debug: aSCScript
	| methodNode |
	methodNode := self class compiler
		source: aSCScript content readStream;
		class: self runnerClass;
		context: nil;
		requestor: self;
		noPattern: true;
		failBlock: [ ^ nil ];
		translate.
	^ self privateDebugMethod: methodNode generateWithSource