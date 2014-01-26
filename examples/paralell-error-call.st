#!/usr/bin/scale/pharo

"notexistant command does not exist, and will fail"
futurels := system callAsync: 'notexistant'.
futurels whenFinished: [ :ls | system stdout << ls ].

system stdout << 'just after the future call';cr.