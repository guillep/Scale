
Metacello new
  baseline: 'Scale';
  repository: 'filetree://', (FileSystem workingDirectory / '..'/ 'src') fullName;
  onConflict: [:ex | ex allow];
  load.

FileStream stdout << 'Snapshotting'; cr.
Smalltalk snapshot: true andQuit: true.
