printing
printOn: aStream
	self accept: (ArffGenerator new
						stream: aStream;
						yourself)