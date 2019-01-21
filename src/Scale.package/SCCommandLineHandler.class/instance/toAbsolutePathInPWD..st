activation
toAbsolutePathInPWD: path
	| pwdPath |
	pwdPath := Path
		from:
			(OSEnvironment current
				at: 'PWD'
				ifAbsent: [ self error: ' Imposible to resolve PWD' ]).
	^ AbsolutePath withAll: pwdPath segments , path segments