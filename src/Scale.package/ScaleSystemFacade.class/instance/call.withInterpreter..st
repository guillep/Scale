private
call: aCommand withInterpreter: anInterpreter

	[ | stdout stderr process result |
	stdout := ('stdout' asFileReference openWritable: true) writeStream.
	stderr := ('stderr' asFileReference openWritable: true) writeStream.

	process := OSProcess thisOSProcess
		forkJob: anInterpreter
		arguments: (Array with: '-c' with: aCommand)
		environment: nil
		descriptors: { nil . stdout . stderr }.
	
	self waitEndOf: process.
	
	process succeeded ifFalse: [ self error: ('stderr' asFileReference openWritable: false) readStream upToEnd ].
	
	result := ('stdout' asFileReference openWritable: false) readStream upToEnd.
	^ result
	] ensure: [ 
		'stdout' asFileReference ensureDeleted.
		'stderr' asFileReference ensureDeleted.
	]