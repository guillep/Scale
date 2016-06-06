baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/sbragagnolo/Scale/main/'.
		spec project: 'TaskIT2Shell' with: [
				spec
					className: #ConfigurationOfTaskIT2Shell;
					versionString: #'bleedingEdge';
					repository: 'http://smalltalkhub.com/mc/sbragagnolo/TaskIT2/main/' ].
		spec package: 'Scale' with: [
				spec requires: #('TaskIT2Shell' ). ]. ].
