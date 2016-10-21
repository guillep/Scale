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

