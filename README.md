
[![Build Status](https://travis-ci.org/guillep/Scale.svg?branch=master)](https://travis-ci.org/guillep/Scale)


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
  The 
##Classic 


```bash
git clone https://github.com/guillep/Scale
cd Scale
./build/build.sh
sudo ./build/scale-bootstrap ./build/install.st
```


## Checking the installation 

```bash
$> scale --version
Scale 0.1 for Pharo5.0
$> scale --help
Scale - Executing pharo scripts
=========================================================

scale [ options | script-path  [ script-options]  ] 

[options] 
	--version	prints the version
	--help		prints this help 

[ example ] 
	$> scale /path/to/script.st  --script-option=1

Scale-UI (For debugging and code edition)
=========================================================

scale-ui [ script-path  [ script-options]  | folder ] 

[ script-example ] 
	$>scale-ui /path/to/script.st  --script-option=1

[ folder-example ]
	$>scale-ui /path/to/my-script/folder 
```



## Installation folders

Scale installs it self in /usr/local/bin folder, adding the following files and directories: 

```bash
/usr/local
├── bin
│   └── scale
│   └── scale-ui
├── pharo
│   └── pharo-vm
│        ├── libB3DAcceleratorPlugin.so
│        ├── libFT2Plugin.so
│        ├── libgit2.so.0
│        ├── libInternetConfigPlugin.so
│        ├── libJPEGReaderPlugin.so
│        ├── libJPEGReadWriter2Plugin.so
│        ├── libRePlugin.so
│        ├── libSDL2-2.0.so.0
│        ├── libSDL2-2.0.so.0.2.1
│        ├── libSDL2DisplayPlugin.so
│        ├── libSqueakSSL.so
│        ├── libssh2.so.1
│        ├── libSurfacePlugin.so
│        ├── pharo
│        ├── PharoV50.sources
│        ├── vm-display-null
│        ├── vm-display-X11
│        ├── vm-sound-ALSA
│        └── vm-sound-null
└── scale
         ├── uninstall.st
         ├── scale
	 ├── scale-ui
         ├── Pharo.image
         └── Pharo.changes

```

Since the installation process is supposed to address /usr/local/bin as installation folder, there is no need for adding any information to the PATH variable.


## Uninstall Scale 
```bash
sudo /usr/local/scale/uninstall.st
```




Examples
-------

You can find a lot more examples in the examples directory. Here we show you a bunch of them


#### Writing a program that interacts with stdin and stdout:

```smalltalk
#!/usr/local/bin/scale

system stdout << 'I will echo everything you type. Type exit to exit';cr;cr.

got := system stdin upTo: Character lf.
[ got = 'exit' ] whileFalse: [
	system stdout << got; cr.
	got := system stdin upTo: Character lf.
]
```

#### Writing a program that calls ls -l

```smalltalk
#!/usr/local/bin/scale

(system call: 'ls -l') lines do: [ :line |
	system stdout << line.
	system stdout cr.
].
```

#### Or doing the same directly in Pharo :D

```smalltalk
#!/usr/local/bin/scale

system pwd entries do: [ :entry |
	system stdout << entry asString.
	system stdout cr.
].
```


#### Asking for an asynchrouns call! 

```smalltalk
#!/usr/local/bin/scale

| futurels |
 futurels := system callAsync: 'sleep 2 && ls -l'.
 futurels onSuccessDo: [ :ls | system stdout << ls ].
 system stdout << 'just after the future call';cr.

```



#### Downloading new images, and using options :) 

```smalltalk
#!/usr/local/bin/scale

| version  |
	
  version := (system arguments optionAt: #v ifAbsent: [ 50 ]) asInteger.
  system stdout << 'Downloading ' << version asString << ' into: ' << system pwd fullName; flush.
  system loadPharo: version into: system pwd.

```


The System variable
-------------------
The system variable, that is available in any scale script, is an Instance of SCSystemFacade

Here a directory for watching the available methods: 


## Util-Streams
```smalltalk
system stdout " It returns the instance of the stdout stream"
system stderr " It returns the instance of the stderr stream"
system stdin " It returns the instance of the stdin stream"
```

## Util-Bash
```smalltalk
system chmod: aPermissionString to: aFileReferenceOrStringPattern "Chmod command for basic usage."
system ln: aTargetReference to: aLinkReference "ln command for symlink usage."
system untargz: aFileReference to: aDestinationReference "Typical command for decompressing 
a regular tar+gunzip file" 
system untargz: aFileReference  "Typical command for decompressing a regular tar+gunzip 
file on a temp directory"
system unzip: aFileReference to: aDestinationReference "Typical command for decompressing a 
regular zip file"
system unzip: aFileReference "Typical command for decompressing a regular tar+gunzip file on 
a temp directory on a temp directory"
system wget: anUrl to: outFileReference "fetch a file from an url by using wget. and saving 
it in a given destination"
system wget: anUrl "fetch a file from an url by using wget. and saving it in a temporal 
destination"
system wget: anURL andUntargz: aDestination "fetch a file from an url by using wget.And saving 
it in a temporal destination and it tries to decompress it from a tar-gz format"
system wget: anURL andUnzip: aDestination " fetch a file from an url by using wget. And saving 
it in a temporal destination and it tries to decompress it from a zip format"
```
## Util-Execute third pharo
```smalltalk
system execute: aString into: anImageBundle "Executes a given string content into an given 
image."
system execute: aString into: anImageBundle andSaveItAt: aDestination "Executes a given 
string content into an given image. then saves this image in the given destination"
```
## Util-Load pharo
```smalltalk
system loadPharo: aVersion into: aFileReference " Downloads a pharo image+bundle of the given 
version into a given destination. It returns an image bundle object"
system loadBaseline: aPackageName from: aRepository into: anImageBundle andSaveItAt: aDirectory 
" It loads the pointed baseline from the pointed repository and saves the image into 
the given destination. It returns an image bundle object "
system loadUIBaseline: aPackageName from: aRepository into: anImageBundle andSaveItAt: aDirectory 
" It loads the pointed baseline from the pointed repository in GRAPHICAL mode, 
then it saves the image into the given destination. It returns an image bundle object "
```
## Util-Call commands 
```smalltalk
system bash: aString " It executes synchronously a given string in a fresh bash instance " 
system call: aString " It executes synchronously a given string in a fresh default-interpreter 
instance " 
system callAsync: aString " It executes Asynchronously a given string in a fresh 
default-interpreter instance " 
system scale: aScript " It executes synchronously a given scale script FILE in a fresh 
scale instance " 
```
## Util-Environment
```smalltalk
system environment: aString "It returns the value of the given environment variable name" 
system home " It returns the home of the current user" 
system workingDirectory " It returns the pharo-working directory (the vm folder)"
system pwd "It returns directory where the user was at the moment of the execution of 
the script (the PWD environment variable) "
```
## Util-Finalization
```smalltalk
system exit: anErrorCode " It finishes scale given the error code to the operative system. "
```

## Util-Image
```smalltalk
system saveAfterRun  " It set the mode of running to save after the execution of the 
system script and the end of any parallel process registered for join by this script" 
system saveImageAs: aFileReference " It saves the running image into a given destination" 
```

## Convenience
```smalltalk
system registerProcessToJoin: aFuture "In your script you may want to use the force of 
TaskIT that is integrated into this application. This method allows you to register 
processes that you need to be finished before the image exits, but after the end 
of the script ".
system messageSend: aSelector "It returns a message send with the selector and the system 
object as receiver. Useful for building callbacks" 
system uimanager "It returns the uimanager" 
```

Doing your scripts
------------------

So for writing down your own scripts you can do it by editing a file with your favorite editor or you can use scale-ui. 
```bash
user$ scale-ui <scripts-folder-path>
```

Scale-ui will open the image of the scale tool in graphic mode, with a script browser as shown in the following images. 

![Please add an issue. Image is not loading!][image-browser]

This browser allows you to edit your scripts while browsing the system façade code, for knowing what's there ready to use. 

This browser as well allows you to create a new script,

![Please add an issue. Image is not loading!][image-create]
![Please add an issue. Image is not loading!][image-created]

delete an existing script and run or debug scripts on your folder. 
![Please add an issue. Image is not loading!][image-debug].

During this session you may close the browser or want to open many others for different browsers (Future implementations will be happier in this aspect)

For accessing this browser from the world menu, go WorldMenu> Tools> Scale> Script Browser

![Please add an issue. Image is not loading!][image-menu]





Loading
-------

Wanting to code? 
   Loading this project in a development image is really easy. Just execute the build script, it will give you as output an image in the directory called 'cache'. 
   If you just want to install scale in an existing image, you just need to execute in this image the content of the building script installScale.st, located into the build folder. 


```smalltalk

Metacello new
  baseline: 'Scale';
  repository: 'github://guillep/Scale';
  load.

```

Or you may want to peek an eye to Iceberg project: https://github.com/npasserini/iceberg. :) 





[image-browser]: https://github.com/guillep/Scale/raw/master/images/image1.png "Browser1"
[image-debug]: https://github.com/guillep/Scale/raw/master/images/image2.png "Debugger"
[image-create]: https://github.com/guillep/Scale/raw/master/images/image3.png "Filecreate"
[image-created]: https://github.com/guillep/Scale/raw/master/images/image4.png "Filecreated"
[image-menu]: https://github.com/guillep/Scale/raw/master/images/image5.png "Menu"



