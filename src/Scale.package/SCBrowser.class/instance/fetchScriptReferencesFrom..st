as yet unclassified
fetchScriptReferencesFrom: aDir
	self assert: aDir isDirectory.
	^ aDir directories , (aDir filesMatching: '*.st')