#!/usr/bin/scale

fact := [ :n | | fact1 |
	fact1 := [ :partial :next |
		next = 0
			ifTrue: [partial]
			ifFalse: [ fact1 value: partial * next value: (next-1) ].
	].
	fact1 value: n value: (n-1).
].

system stdout << (fact value: 18) asString
