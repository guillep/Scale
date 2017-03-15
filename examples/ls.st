#!/usr/bin/env scale

(system call: 'ls -l') lines do: [ :line |
	system stdout << line.
	system stdout cr.
].
