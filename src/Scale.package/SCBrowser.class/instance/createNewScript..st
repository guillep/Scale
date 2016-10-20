as yet unclassified
createNewScript: aDir
	| name |
	[ name := UIManager default request: 'Filename' initialAnswer: ''.
	name ifNil: [ ^ self ].
	(name endsWith: '.st')
		ifFalse: [ name := name , '.st' ] ]
		doWhileTrue: [ (aDir / name) exists
				ifTrue: [ UIManager default alert: 'There is already a file with the same name'.
					true ]
				ifFalse: [ false ] ].
	(aDir / name) ensureCreateFile.
	(aDir / name) writeStream
		nextPutAll: SCScaleCodeManager interpreter;
		nextPutAll: OSPlatform current lineEnding;
		close.
	self update.
	^ SCScript new
		file: aDir / name;
		yourself