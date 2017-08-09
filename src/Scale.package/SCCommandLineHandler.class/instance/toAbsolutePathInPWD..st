activation
toAbsolutePathInPWD: path

	| pwdPath |
	pwdPath := Path from: (OSEnvironment current getEnv: 'PWD').
	^ AbsolutePath withAll: (pwdPath segments, path segments)