activation
activateVersion
	(self hasOption: 'version')
		ifTrue: [ self stdout
				nextPutAll: 'Scale 0.1 for ';
				nextPutAll: Smalltalk version;
				cr.
			^ true ].
	^ false