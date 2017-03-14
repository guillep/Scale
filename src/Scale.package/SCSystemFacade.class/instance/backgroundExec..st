utils - call commands
backgroundExec: aCommand
	"
	this exec executes a nohup call in background (to prevent commands to hangup)
	see 'man nohup' for more :)
	"

	^ self 
		exec: (aCommand, ' &') 
		withInterpreter: self class defaultInterpreter.