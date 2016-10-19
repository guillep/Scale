utils - call commands
callAsync: aCommand

"
		- This call executes a given string as a default-interpreter (bash) line
		- The call is managed like an asynchronous call 
		- This call will return a future. This future can be configured with callbacks or joined. 
				- If the program invoked finishes with 0, it will provide as result the content of the standar output
				- If the program invoked finishes with 1, it will provide as error the content of the standar error 
					- If the future is joined, the error will be raised as an exception
					- If the future is configured with on-error callbacks, 
						the callback will receive an exception as parameter
		- Forcely this call is only valid for unix based environments. 
	"


	^ self callAsync: aCommand withInterpreter: 'bash'