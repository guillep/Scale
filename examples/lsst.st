#!/usr/bin/scale

system pwd entries do: [ :entry |
	system stdout << entry asString.
	system stdout cr.
].
