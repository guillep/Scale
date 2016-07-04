accessing
copyVMFilesTo: aDirectory
	(directory / #'pharo-vm')  copyTo: aDirectory / #'pharo-vm'.
	(directory / #'pharo-ui')  copyTo: aDirectory / #'pharo-ui'.
	(directory / #'pharo')  copyTo: aDirectory / #'pharo'.