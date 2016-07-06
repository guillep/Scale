accessing
copyVMFilesTo: aDirectory with: system
	(directory / #'pharo-vm')  copyTo: aDirectory / #'pharo-vm'.
	(directory / #'pharo-ui')  copyTo: aDirectory / #'pharo-ui'.
	(directory / #'pharo')  copyTo: aDirectory / #'pharo'.
	
	system chmod: '+x' to: (aDirectory / #'pharo-vm') fullName,  '/*'.
	system chmod: '+x' to: aDirectory / #'pharo-ui'.
	system chmod: '+x' to: aDirectory / #'pharo'.