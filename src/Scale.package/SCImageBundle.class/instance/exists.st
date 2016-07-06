accessing
exists
	^ directory isDirectory and: [ (directory / 'Pharo.image') exists ]