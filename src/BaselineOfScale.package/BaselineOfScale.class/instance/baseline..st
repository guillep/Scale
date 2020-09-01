baselines
baseline: spec
	<baseline>
	spec
		for: #'pharo7.x'
		do: [ spec blessing: #baseline.
			spec
				baseline: 'TaskItShell'
				with: [ spec repository: 'github://pharo-contributions/taskit-shell' ].
			spec package: #Scale ].
	spec
		for: #'pharo8.x'
		do: [ spec blessing: #baseline.
			spec
				baseline: 'TaskItShell'
				with: [ spec repository: 'github://pharo-contributions/taskit-shell' ].
			spec package: #Scale ].
	spec
		for: #'pharo9.x'
		do: [ spec blessing: #baseline.
			spec
				baseline: 'TaskItShell'
				with: [ spec repository: 'github://pharo-contributions/taskit-shell' ].
			spec package: #Scale ]