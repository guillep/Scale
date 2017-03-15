#!/usr/bin/env scale


| futurels |
futurels := system callAsync: 'sleep 2 && ls -l'.
futurels onSuccessDo: [ :ls | system stdout << ls ].

system stdout << 'just after the future call';cr.
