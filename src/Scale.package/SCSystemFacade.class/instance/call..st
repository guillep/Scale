utils - call commands
call: aCommand
"
		- This call executes a given string as a default-interpreter (bash) line
		- The call is managed like a regular synchronous call 
			- If the exit code of the application is 0 It will return the exit of the standar output.
		   - If the exit code of the application is NOT 0 It will raise an exception with the 
				content of the stander error stream.
		- Forcely this call is only valid for unix based environments. 
	"

	^ self call: aCommand withInterpreter: self class defaultInterpreter.