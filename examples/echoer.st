#!/usr/bin/env scale

| got | 

system stdout << 'I will echo everything you type. Type exit to exit';cr;cr.

got := system stdin upTo: Character lf.
[ got = 'exit' ] whileFalse: [
	system stdout << got; cr.
	got := system stdin upTo: Character lf.
].
