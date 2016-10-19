util - load pharo
loadBaseline: aPackageName from: aRepository into: anImageBundle andSaveItAt: aDirectory
	| temporalBaselineScript writing |
	"
		This method loads a baseline in a given bundle (Image+Vm), and it saves the bundle result (newImage+sameVm) into a given directory, ensuring that the nase bundle will not be, at least that the destination is the place of the original bundle. In that case it will be overrited. 
		
		For doing this it uses the ST commandline handler (meaning that it will not work with Pharo 2.0 or lesser).
		The loading of this code is done in headless mode. 
	"
	temporalBaselineScript := #/ asFileReference / #tmp / self hash asString , 'Baseline.st'.
	writing := temporalBaselineScript writeStream.
	writing
		nextPutAll:
			('Metacello new baseline: ''{package}'';repository: ''{repository}'';onConflict: [:ex | ex allow];load. Smalltalk saveAs: ''{destination}''.Smalltalk snapshot: true andQuit: true.'
				format:
					{(#package -> aPackageName asString).
					(#repository -> aRepository asString).
					(#destination -> (aDirectory / #Pharo) fullName)} asDictionary).
	writing
		flush;
		close.
	self
		call:
			(' {directory}/pharo {directory}/Pharo.image st {script}'
				format:
					{(#directory -> anImageBundle directory fullName).
					(#script -> temporalBaselineScript fullName)} asDictionary).
	anImageBundle copyVMFilesTo: aDirectory with: self