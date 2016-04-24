visiting
visitArffDateAttribute: anArffDateAttribute
	stream
		<< '@attribute ';
		<< anArffDateAttribute attributeName;
		<< ' date '.
	anArffDateAttribute format arffStringOn: stream.
	stream lf