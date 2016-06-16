Scale
=====

Scale is a little project that aims to take Pharo into the shell. That is, to write shell scripts in Pharo, use it's power, and have a better syntax instead of the ugly bash one :).


DISCLAIMER: Scale is tested only in Linux. 




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
sudo ./Scale/build/uninstall.st
```


Examples
-------

You can find a lot more of examples in the examples directory. Here we show you a bunch of them


#### Writing a program that interacts with stdin and stdout:

```smalltalk
#!/usr/bin/scale

system stdout << 'I will echo everything you type. Type exit to exit';cr;cr.

got := system stdin upTo: Character lf.
[ got = 'exit' ] whileFalse: [
	system stdout << got; cr.
	got := system stdin upTo: Character lf.
]
```

#### Writing a program that calls ls -l

```smalltalk
#!/usr/bin/scale

(system call: 'ls -l') lines do: [ :line |
	system stdout << line.
	system stdout cr.
].
```

#### Or doing the same directly in Pharo :D

```smalltalk
#!/usr/bin/scale

system pwd entries do: [ :entry |
	system stdout << entry asString.
	system stdout cr.
].
```

Reference
-------
TODO

Loading
-------

Wanting to code? 
   For loading this project on a development image is really easy. Just execute the building script, it will give you as output an image in the directory called 'cache'. 
   If you just want to install scale in an existing image, you just need to execute in this image the content of the building script installScale.st, located into the build folder. 


```smalltalk

Gofer it
	smalltalkhubUser: 'Pharo' project: 'MetaRepoForPharo50';
	configurationOf: 'OSProcess';
	loadVersion: #stable.
Gofer it
	smalltalkhubUser: 'sbragagnolo' project: 'TaskIT2';
	configurationOf: 'TaskIT2';
	loadVersion: #bleedingEdge.
Gofer it
	smalltalkhubUser: 'sbragagnolo' project: 'TaskIT2';
	configurationOf: 'TaskIT2Shell';
	loadVersion: #bleedingEdge.
Gofer it
	smalltalkhubUser: 'Guille' project: 'Roll';
	configurationOf: 'Roll';
	loadVersion: #bleedingEdge.
Gofer it
	repository: (MCFileTreeRepository new 
					directory: FileSystem workingDirectory / '..'/ 'src';
					yourself);
	package: 'Scale';
	load.


```

Pay attention to change the address of the File repository for the Scale code. 



