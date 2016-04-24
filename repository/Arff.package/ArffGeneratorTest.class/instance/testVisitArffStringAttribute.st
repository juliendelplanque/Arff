tests-visiting
testVisitArffStringAttribute
	| string |
	string := ArffStringAttribute new
					attributeName: 'strAtt';
					yourself.
	self
		assert: (string accept: visitor) stream contents
		equals: '@attribute strAtt string', String lf