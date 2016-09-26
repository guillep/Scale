baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				baseline: 'TaskItShell' with: [ spec repository: 'github://sbragagnolo/taskit:dev-0.3' ];
				project: 'Roll'
					with: [ spec
						className: #ConfigurationOfRoll;
						versionString: #bleedingEdge;
						repository: 'http://smalltalkhub.com/mc/Guille/Roll/main/' ].
			spec package: #Scale ]
