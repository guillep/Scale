util - load pharo
loadBaseline: aPackageName from: aRepository into: anImageBundle andSaveItAt: aDirectory
	| temporalBaselineScript writing |
	temporalBaselineScript := #/ asFileReference / #tmp / self hash asString , 'Baseline.st'.
	writing := temporalBaselineScript writeStream.
	writing
		nextPutAll:
			('
	Metacello new
	  baseline: ''{package}'' ;
	  repository: ''{repository}'';
 	  onConflict: [:ex | ex allow];
 	  load.
	Smalltalk saveAs: ''{destination}''.
	Smalltalk snapshot: true andQuit: true
'
				format:
					{(#package -> aPackageName asString).
					(#repository -> aRepository asString).
					(#destination -> (aDirectory / #Pharo) fullName )} asDictionary).
	writing
		flush;
		close.
		
	self
		call:
			(' {directory}/pharo {directory}/Pharo.image st {script}'
				format:
					{(#directory -> anImageBundle directory fullName).
					(#script -> temporalBaselineScript fullName)} asDictionary).
					
	anImageBundle copyVMFilesTo: aDirectory .