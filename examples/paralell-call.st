#!/usr/bin/scale

futurels := system callAsync: 'sleep 2 && ls -l'.
futurels onSuccess: [ :ls | system stdout << ls ].

system stdout << 'just after the future call';cr.
