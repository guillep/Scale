baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				baseline: 'TaskIT2' with: [ spec repository: 'github://sbragagnolo/taskit-2:master' ];
				baseline: 'TaskIT2Shell' with: [ spec repository: 'github://sbragagnolo/taskit-2:master' ];
				project: 'OSProcess'
					with: [ spec
						className: #ConfigurationOfOSProcess;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ];
				project: 'Roll'
					with: [ spec
						className: #ConfigurationOfRoll;
						versionString: #bleedingEdge;
						repository: 'http://smalltalkhub.com/mc/Guille/Roll/main/' ].
			spec package: #Scale ]