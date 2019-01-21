running
run: aScript arguments: anArgObject
	| result |
	Author
		useAuthor: 'ScaleUser-' , self resolveOperativeSystemUserName
		during: [ system arguments: anArgObject.
			SCUnixStore
				useDuring: [ result := Smalltalk compiler
						source: aScript;
						logged: false;
						receiver: self;
						evaluate.
					system joinAllCalls.
					^ result ] ]