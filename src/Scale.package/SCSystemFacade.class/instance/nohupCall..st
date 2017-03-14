utils - call commands
nohupCall: aCommand
	"
	this call executes a nohup call in background (to prevent commands to hangup)
	see 'man nohup' for more :)
	"

	^ self 
		call: ('nohup ', aCommand, ' &') 
		withInterpreter: self class defaultInterpreter.