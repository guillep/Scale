baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				baseline: 'TaskItShell'
				with: [ spec repository: 'github://sbragagnolo/taskit:v-0.2.1' ].
			spec package: #Scale ]