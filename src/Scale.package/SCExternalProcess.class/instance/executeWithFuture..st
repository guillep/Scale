initialize-release
executeWithFuture: aFuture 
	| process |

	process := OSProcess thisOSProcess
		forkJob: interpreter
		arguments: (Array with: '-c' with: command)
		environment: nil
		descriptors: { nil . stdout writeStream . stderr writeStream }.
	
	self waitEndOf: process.
	
	process succeeded 
		ifFalse: [ self error: stderr readStream upToEnd ].
	
	^ stdout readStream upToEnd.