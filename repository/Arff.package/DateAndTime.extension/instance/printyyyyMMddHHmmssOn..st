*Arff
printyyyyMMddHHmmssOn: aStream
	"Print the date and time formatted as yyyy-MM-dd HH:mm:ss on the stream."
	self printYMDOn: aStream.
	aStream << Character space.
	self printHMSOn: aStream.