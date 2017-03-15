initialization
initialize
	super initialize.
	interpreter := self class defaultInterpreter.
	verbose := false.
	async := false.
	background := false.
	nohup := false
	