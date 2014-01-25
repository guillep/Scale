Gofer it
	squeaksource3: 'MetaRepoForPharo20';
	configurationOf: 'FileTree';
	loadVersion: '1.0.5'.
	
Gofer it
	squeaksource3: 'MetaRepoForPharo20';
	configurationOf: 'OSProcess';
	loadVersion: '4.5.8'.
	
Gofer it
	repository: (MCFileTreeRepository new 
					directory: FileSystem workingDirectory / 'src';
					yourself);
	package: 'Scale';
	load.

Smalltalk snapshot: true andQuit: true.