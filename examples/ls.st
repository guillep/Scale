#!/usr/bin/scale/pharo

(system call: 'ls -l') lines do: [ :line |
	system stdout << line.
	system stdout cr.
].