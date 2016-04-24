tests-visiting
testVisitArffData
	| data |
	data := ArffData new.
	data addInstance: #(1 2 3).
	data addInstance: #('a' 'b' 3).
	data addInstance: #(1.42 'hello' 3).
	self
		assert: (data accept: visitor) stream contents
		equals: '@data', String lf, '1,2,3', String lf, '"a","b",3', String lf, '1.42,"hello",3'