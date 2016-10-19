utils - environment
environment: aString
	"
		this method returns the value of a variable setted on the environment. 
		
	"
	^ (OSEnvironment current at: aString asString) 