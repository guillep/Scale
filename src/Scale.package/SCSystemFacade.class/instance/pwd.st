utils - environment
pwd
	"
		pwd returns the working folder, from the point of view of the bash program that runs our image. 
		(meaning the folder where was located the user when it started the script execution)
		Quite interesting for installation scripts. 
	"

	^ (self environment: 'PWD') asFileReference