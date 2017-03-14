utils - call commands
exec: aCommand
"
		- This exec executes a given string as a default-interpreter (bash) line
		- The exec is managed like a regular synchronous exec 
			- If the exit code of the application is 0 It will return the exit of the standar output.
		   - If the exit code of the application is NOT 0 It will raise an exception with the 
				content of the stander error stream.
		- Forcely this exec is only valid for unix based environments. 
		
		NOTE: The difference between a call and an exec is the output: calls takes the stdout/stderr 
		and allows you to use the result while exec will send results to standard IO.
	"

	^ self exec: aCommand withInterpreter: self class defaultInterpreter.