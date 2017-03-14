utils - call commands
execAsync: aCommand
"
		- This exec executes a given string as a default-interpreter (bash) line
		- The exec is managed like an asynchronous exec 
		- This exec will return a future. This future can be configured with callbacks or joined. 
				- If the program invoked finishes with 0, it will provide as result the content of the standar output
				- If the program invoked finishes with 1, it will provide as error the content of the standar error 
					- If the future is joined, the error will be raised as an exception
					- If the future is configured with on-error callbacks, 
						the callback will receive an exception as parameter
		- Forcely this execs is only valid for unix based environments. 

		NOTE: The difference between a exec and an call is the output: calls takes the stdout/stderr 
		and allows you to use the result while exec will send results to standard IO.
	"


	^ self execAsync: aCommand withInterpreter: 'bash'