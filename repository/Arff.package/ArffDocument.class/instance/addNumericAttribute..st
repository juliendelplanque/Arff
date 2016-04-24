adding
addNumericAttribute: name
	self addAttribute: (ArffNumericAttribute new
								attributeName: name;
								yourself)