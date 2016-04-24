adding
addDateAttribute: name format: aString
	self addAttribute: (ArffDateAttribute new
								attributeName: name;
								format: aString;
								yourself)