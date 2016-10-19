utils - image
saveAfterRun
	" 
		This method indicates that the image should save it self after running the whole script. 
		If there is running on parallel any asynchronous process spawned by the script,
		it will be waited up to it finalization before the image is saved and finished.
	"
	saveAfterRun := true