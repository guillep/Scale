running
run: aSCScript
	^ SCUnixStore
		useDuring: [ Smalltalk compiler
				source: aSCScript content;
				logged: false;
				receiver: self runnerInstance;
				evaluate ]