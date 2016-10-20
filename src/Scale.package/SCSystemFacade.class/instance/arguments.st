utils - arguments
arguments
	" 
	
		Just asks for the arguments. 
		
		This method returns the arguments of the program. 
		Meaning that this array does NOT includes 
			- VM executable
			- image file
		
		It gives the rest of arguments. Flags and values. It does not do any difference .
	"
	^ Smalltalk arguments