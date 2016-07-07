Scale
=====

Scale is a little project that aims to take Pharo into the shell. That is, to write shell scripts in Pharo, use it's power, and have a better syntax instead of the ugly bash one :).


DISCLAIMER: Scale is tested only in Linux. 


Installing
----------

For installing Scale you have to be SUDOER and to have internet connection. 



# Development vs Usage

  We have two flavors for installing Scale. ZeroConf, and Classic. 
  If you want to see what is happening during the installation, or if you want to do your own modifications, you want to follow the classic guide. 
  If you just want to use it, ZeroConf is your deal. 
  

##ZeroConf 
 Because nobody likes to do it in more than one line. 
```bash
   wget -O- https://raw.githubusercontent.com/guillep/Scale/master/setupScale.sh | sudo bash
 ```
 
##Classic 



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

Metacello new
  baseline: 'Scale';
  repository: 'github://guillep/Scale';
  load.

```

Or you may want to peek an eye to Iceberg project: https://github.com/npasserini/iceberg. :) 




