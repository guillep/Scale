private
joinAllCalls
	resultsWaited
		do: [ :a | 
			(a isKindOf: TKTJobExecution)
				ifTrue: [ a wait ] ].
	(resultsWaited anySatisfy: #isError)
		ifTrue: [ self error: 'One or more sub processes finished with error. Check it out.' ]