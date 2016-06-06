private
joinAllCalls
	resultsWaited do: #wait.
	(resultsWaited anySatisfy: #isError)
		ifTrue: [ self error: 'One or more sub processes finished with error. Check it out.' ]