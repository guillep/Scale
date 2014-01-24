#!./scale

'/usr/bin/scale' asFileReference ensureDirectory.
'scale' asFileReference copyTo: '/usr/bin/scale/pharo' asFileReference.
system call: 'chmod +x /usr/bin/scale/pharo'.