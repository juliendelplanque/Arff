adding
addNominalAttribute: name specification: aSpecification
	self addAttribute: (ArffNominalAttribute new
								attributeName: name;
								nominalSpecification: aSpecification;
								yourself)