FileStream stdout << 'Installing FileTree'; cr.

Gofer it
	squeaksource3: 'MetaRepoForPharo20';
	configurationOf: 'FileTree';
	loadVersion: '1.0.5'.

FileStream stdout << 'Installing OSProcess'; cr.
Gofer it
	squeaksource3: 'MetaRepoForPharo20';
	configurationOf: 'OSProcess';
	loadVersion: '4.5.8'.

FileStream stdout << 'Installing Scale'; cr.
Gofer it
	repository: (MCFileTreeRepository new 
					directory: FileSystem workingDirectory / 'src';
					yourself);
	package: 'Scale';
	load.

FileStream stdout << 'Snapshotting'; cr.
Smalltalk snapshot: true andQuit: true.