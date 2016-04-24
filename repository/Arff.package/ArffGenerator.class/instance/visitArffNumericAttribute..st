visiting
visitArffNumericAttribute: anArffNumericAttribute
	stream
		<< '@attribute ';
		<< anArffNumericAttribute attributeName;
		<< ' numeric';
		lf