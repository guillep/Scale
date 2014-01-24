#!/usr/bin/scale/pharo

system stdout << (fact value: 10).

(system call: 'ls -l') lines do: [ :line |
	system stdout << line.
	system stdout cr.
].