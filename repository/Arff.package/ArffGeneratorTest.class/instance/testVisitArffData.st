tests-visiting
testVisitArffData
	| data |
	visitor stack push: (ArffDocument new attributes: {ArffNumericAttribute new . ArffStringAttribute new . ArffNumericAttribute new}; yourself).
	data := ArffData new.
	data addInstance: #(1 'a' 3).
	data addInstance: #(2 'b' 3).
	data addInstance: #(1.42 'hello' 3).
	self
		assert: (data accept: visitor) stream contents
		equals: '@data', String lf, '1,"a",3', String lf, '2,"b",3', String lf, '1.42,"hello",3'