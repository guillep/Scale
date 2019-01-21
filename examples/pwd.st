#!/usr/bin/env scale

| locator path |

path := (FileLocator home) path.


"system stdout << (OSEnvironment current at: 'PWD'); cr."

system stdout << (system pwd fullName); cr.
system stdout << (FileSystem disk workingDirectory fullName); cr.
system stdout << ((system home / '.config') fullName); cr.


system stdout << (system class selectors joinUsing: '\r\n')