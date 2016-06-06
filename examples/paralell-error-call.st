#!/usr/bin/scale/pharo

"notexistant command does not exist, and will fail"
futurels := system callAsync: 'notexistant'.
futurels onSuccess: [ :ls | system stdout << ls ].
futurels onError: [ :err | system stderr << err messageText ].
system stdout << 'just after the future call';cr.
