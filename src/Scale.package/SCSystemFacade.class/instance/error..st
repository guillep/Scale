convenience
error: aText
	self stderr << 'Error:'.
	self stderr << String cr.
	self stderr << aText.
	self stderr flush.
	super error: aText