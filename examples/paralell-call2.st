#!/usr/bin/scale/pharo

futurels := system callAsync: 'sleep 2 && ls -l'.
futurels whenFinished: [ :ls | system stdout << 'finished the ls!';cr ].

system stdout << 'just after the future call';cr.

"Now we wait explicitly for the value of ls because we need it!"
system stdout << futurels value lines first asString;cr.