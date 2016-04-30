writing
writeInFile: aFileReference
	self printOn: (FileStream newFileNamed: aFileReference)