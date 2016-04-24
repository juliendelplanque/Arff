visiting
visitArffStringAttribute: anArffStringAttribute
	stream
		<< '@attribute ';
		<< anArffStringAttribute attributeName;
		<< ' string';
		lf