*Scale
startUp: resuming
	resuming
		ifFalse: [ ^ self ].
	Resolver := InteractiveResolver new.
	Resolver addResolver: SCScaleResolver new. 
	Resolver addResolver: SystemResolver new.
	Resolver addResolver: PlatformResolver forCurrentPlatform