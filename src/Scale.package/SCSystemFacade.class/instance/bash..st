utils - call commands
bash: aScript
	"
		- This call executes a given string as a bash script
		- The call is managed like a regular call. 
			- If the exit code of the application is 0 It will return the exit of the standar output.
		   - If the exit code of the application is NOT 0 It will raise an exception with the 
				content of the stander error stream.
		- Forcely this call is only valid for unix based environments. 
	"
	^ (self prepareCall: aScript)
		interpreter: 'bash';
		call