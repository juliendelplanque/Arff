tests-visiting
testVisitArffDateAttribute
	| date |
	date := ArffDateAttribute new
					attributeName: 'myDate';
					format: 'yyyy-MM-dd HH:mm:ss';
					yourself.
	self
		assert: (date accept: visitor) stream contents
		equals: '@attribute myDate date "yyyy-MM-dd HH:mm:ss"',String lf