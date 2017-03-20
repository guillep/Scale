evaluating
useDuring: aBlock
	| oldStore |
	oldStore := CurrentFS.
	CurrentFS := FileSystem store: self new.
	^ aBlock ensure: [ CurrentFS := oldStore ]