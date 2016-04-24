tests-visiting
testVisitArffRelation
	| relation |
	relation := ArffRelation new
						relationName: 'test';
						yourself.
	self
		assert: (relation accept: visitor) stream contents
		equals: '@relation test',String lf