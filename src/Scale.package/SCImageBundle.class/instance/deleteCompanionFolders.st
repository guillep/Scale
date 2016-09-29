as yet unclassified
deleteCompanionFolders
	[ (directory / #'package-cache') recursiveDelete ]
		on: Error
		do: [ :err |  ].
	[ (directory / #'PharoDebug.log') recursiveDelete ]
		on: Error
		do: [ :err |  ].
	[ (directory / #'play-cache') recursiveDelete ]
		on: Error
		do: [ :err |  ].
