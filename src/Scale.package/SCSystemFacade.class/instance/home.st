utils - environment
home

	"
		Convenience method that returns the current user 'home' folder as a file reference .
	"
	^ (self environment: 'HOME') asFileReference