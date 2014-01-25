#!/usr/bin/scale/pharo

system stdout << 'llamando mal a cualquiercosa'.
system stdout cr.

system scale: 'scalefails.st'.
system stdout << (system call: 'ls').