as yet unclassified
delete
	[ (directory / #'pharo-vm') recursiveDelete ]
		on: Error
		do: [ :err |  ].
	[ (directory / #'pharo-ui') recursiveDelete ]
		on: Error
		do: [ :err |  ].
	[ (directory / #pharo) recursiveDelete ]
		on: Error
		do: [ :err |  ].
	[ (directory / #'Pharo.image') recursiveDelete ]
		on: Error
		do: [ :err |  ].
	[ (directory / #'Pharo.changes') recursiveDelete ]
		on: Error
		do: [ :err |  ]