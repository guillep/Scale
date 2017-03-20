I'm a call to the system (using OSSubprocess). 
I act as a builder, processing  options to produce different kind of calls.

Example: 
------------
[[[
'ls' asSystemCall
	arguments: '-la'; 	"it will produce ls -la"
	verbose;  		"output will be directed to the console"
	async; 			"it will be executed asynchronous to the scale script"
	background; 		"it will append '&' to the command: ls -la &"
	nohup;			"it will preprend 'nohup' to the command: nohup ls -la &"
	call.				"perform the call"
]]]