tests-visiting
testVisitArffDocument
	| document |
	document := ArffDocument new.
	document
		relation: 'Temperatures';
		addDateAttribute: 'timestamp' format: 'yyyy-MM-dd HH:mm:ss';
		addNumericAttribute: 'temperature';
		addInstance: #('2015-12-25' 0);
		addInstance: #('2016-01-25' 5);
		addInstance: #('2016-02-25' 7).
	
	self
		assert: (document accept: visitor) stream contents
		equals: '@relation Temperatures',String lf,
					'@attribute timestamp date "yyyy-MM-dd HH:mm:ss"',String lf,
					'@attribute temperature numeric',String lf,
					'@data',String lf,
					'"2015-12-25",0',String lf,
					'"2016-01-25",5',String lf,
					'"2016-02-25",7'