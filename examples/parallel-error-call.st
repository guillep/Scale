#!/usr/local/bin/scale


| futurels | 
"notexistant command does not exist, and will fail"
futurels := system callAsync: 'notexistant'.
futurels onSuccessDo: [ :ls | system stdout << ls ].
futurels onFailureDo: [ :err | system stderr << err messageText ].
system stdout << 'just after the future call';cr.
