#!/usr/bin/scale

system stdout << 'Doing a wrong call'.
system stdout cr.

system scale: 'scalefails.st'.
system stdout << (system call: 'ls').
