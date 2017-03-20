private accessing
pwdFullName
	^ (OSEnvironment current at: 'PWD') asFileReference fullName