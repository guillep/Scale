#!/usr/local/bin/scale

system stdout << 'print to stdout';cr.

system stderr << 'print to stderr';cr.

"I finally quit with code of failure 2"
system exit: 2.
