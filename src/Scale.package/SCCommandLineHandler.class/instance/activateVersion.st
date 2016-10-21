activation
activateVersion 
	(self hasOption: 'version')
		ifTrue: [ FileStream stdout
				nextPutAll: 'Scale 0.1 for ';
				nextPutAll: Smalltalk version;
				flush;
				cr.
			^ true ].
	^ false