adding
addDateAttribute: name format: aString formatter: aSymbol
	self addAttribute: (ArffDateAttribute new
								attributeName: name;
								format: aString;
								formatter: aSymbol;
								yourself)