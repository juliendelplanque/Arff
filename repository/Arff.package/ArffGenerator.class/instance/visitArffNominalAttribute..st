visiting
visitArffNominalAttribute: anArffNominalAttribute
	stream
		<< '@attribute ';
		<< anArffNominalAttribute attributeName;
		<< ' {'.
	anArffNominalAttribute nominalSpecification
		doWithIndex: [ :item :i |
			stream
				<< item.
			anArffNominalAttribute nominalSpecification size ~= i
				ifTrue: [ stream << $, ] ].
	stream
		<< $};
		lf