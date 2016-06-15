#!/usr/bin/scale

futurels := system callAsync: 'sleep 2 && ls -l'.
futurels onSuccess: [ :ls | system stdout << 'finished the ls!' << String crlf << ls lines first asString << String crlf. ].

system stdout << 'just after the future call';cr.





