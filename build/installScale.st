FileStream stdout << 'Installing FileTree'; cr.

"Gofer it
	smalltalkhubUser: 'Pharo' project: 'MetaRepoForPharo50';
	configurationOf: 'FileTree';
	loadVersion: #stable.
"
FileStream stdout << 'Installing OSProcess'; cr.
Gofer it
	smalltalkhubUser: 'Pharo' project: 'MetaRepoForPharo50';
	configurationOf: 'OSProcess';
	loadVersion: #stable.

FileStream stdout << 'Installing TaskIT2'; cr.
Gofer it
	smalltalkhubUser: 'sbragagnolo' project: 'TaskIT2';
	configurationOf: 'TaskIT2';
	loadVersion: #bleedingEdge.

FileStream stdout << 'Installing TaskIT2Shell'; cr.
Gofer it
	smalltalkhubUser: 'sbragagnolo' project: 'TaskIT2';
	configurationOf: 'TaskIT2Shell';
	loadVersion: #bleedingEdge.


FileStream stdout << 'Installing Roll'; cr.
Gofer it
	smalltalkhubUser: 'Guille' project: 'Roll';
	configurationOf: 'Roll';
	loadVersion: #bleedingEdge.


FileStream stdout << 'Installing Scale'; cr.
Gofer it
	repository: (MCFileTreeRepository new 
					directory: FileSystem workingDirectory / '..'/ 'src';
					yourself);
	package: 'Scale';
	load.

FileStream stdout << 'Snapshotting'; cr.
Smalltalk snapshot: true andQuit: true.
