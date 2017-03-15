utils - call commands
scale: aScript
	"
		- This call executes a given scale script file as a bash call of the program scale. 
		- The call is managed like a regular call. 
			- If the exit code of the application is 0 It will return the exit of the standar output.
		   - If the exit code of the application is NOT 0 It will raise an exception with the 
				content of the stander error stream.
		- Forcely this call is only valid for unix based environments. 
	"
	aScript asFileReference exists
		ifTrue: [ ^ self call: self scalePath , ' ' , aScript ]
		ifFalse: [ self error: aScript , ' is not a valid file script. ' ]