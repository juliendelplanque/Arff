*Arff
arffStringOn: aStream withAttribute: anAttribute
	aStream
		<< $";
		<< self;
		<< $"