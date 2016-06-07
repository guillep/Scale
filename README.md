Scale
=====

Scale is a little project that aims to take Pharo into the shell. That is, to write shell scripts in Pharo, use it's power, and have a better syntax instead of the ugly bash one :).





Installing
----------

For installing Scale you have to be SUDOER and to have internet connection. 

```bash
git clone https://github.com/guillep/Scale
cd Scale
./build/build.sh
sudo ./build/install.st
```

After this installation process, the scale bin path  will be added to the path global variable, using the current user .bashrc file. 

Open a new terminal, or resource your .bashrc file. 

```bash
	./Scale/examples/echoer.st
```

For uninstall Scale you just need to execute 
```bash
sudo ./Scale/build/install.st
```


Examples
-------

You can find a lot more of examples in the examples directory. Here we show you a bunch of them


#### Writing a program that interacts with stdin and stdout:

```bash
#!/usr/bin/scale/pharo

system stdout << 'I will echo everything you type. Type exit to exit';cr;cr.

got := system stdin upTo: Character lf.
[ got = 'exit' ] whileFalse: [
	system stdout << got; cr.
	got := system stdin upTo: Character lf.
]
```

#### Writing a program that calls ls -l

```bash
#!/usr/bin/scale/pharo

(system call: 'ls -l') lines do: [ :line |
	system stdout << line.
	system stdout cr.
].
```

#### Or doing the same directly in Pharo :D

```bash
#!/usr/bin/scale/pharo

system workingDirectory entries do: [ :entry |
	system stdout << entry asString.
	system stdout cr.
].
```

Reference
-------
TODO

Loading
-------

TODO
