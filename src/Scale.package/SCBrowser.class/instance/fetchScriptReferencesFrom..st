as yet unclassified
fetchScriptReferencesFrom: aDir
	self assert: aDir isDirectory.
	^ (aDir filesMatching: '*.st')
		collect: [ :f | 
			SCScript new
				file: f;
				yourself ]