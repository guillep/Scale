running
resolveOperativeSystemUserName
	^ OSProcess thisOSProcess environmentAt: 'USER'