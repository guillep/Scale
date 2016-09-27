private
joinAllCalls
	resultsWaited
		do: [ :a | 
			(a isKindOf: TKTFuture)
				ifTrue: [ a waitForCompletion: self defaultTimeout ] ].
	(resultsWaited anySatisfy: #isFailure)
		ifTrue: [ self error: 'One or more sub processes finished with error. Check it out.' ]