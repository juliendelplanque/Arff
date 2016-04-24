tests-visiting
testVisitArffNominalAttribute
	| nominal |
	nominal := ArffNominalAttribute new
						attributeName: 'nomAtt';
						nominalSpecification: #('class1' 'class2' 'class3');
						yourself.
	self
		assert: (nominal accept: visitor) stream contents
		equals: '@attribute nomAtt {class1,class2,class3}',String lf