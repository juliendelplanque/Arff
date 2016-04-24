tests-visiting
testVisitArffNumericAttribute
	| numeric |
	numeric := ArffNumericAttribute new
						attributeName: 'intAtt';
						yourself.
	self
		assert: (numeric accept: visitor) stream contents
		equals: '@attribute intAtt numeric', String lf