*Scale
startUp: resuming
	resuming
		ifFalse: [ ^ self ].
	Resolver := InteractiveResolver new.
	Resolver addResolver: SCScaleResolver default. 
	Resolver addResolver: SystemResolver new.
	Resolver addResolver: PlatformResolver forCurrentPlatform