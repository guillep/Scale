utils - environment
pwd
	^ (OSProcess thisOSProcess environmentAt: 'PWD') asFileReference