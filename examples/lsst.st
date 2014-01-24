#!/usr/bin/scale/pharo

system workingDirectory entries do: [ :entry |
	system stdout << entry asString.
	system stdout cr.
].