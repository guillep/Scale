#!/usr/bin/scale/pharo

system stdout << 'llamando a ls'.
system stdout cr.
(system call: 'ls -l') lines do: [ :line |
	system stdout << line substrings .
	system stdout cr.
].

system stdout << (system stdout class lookupSelector: #<<) sourceCode