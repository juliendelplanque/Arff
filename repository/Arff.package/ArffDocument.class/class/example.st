example
example
	| doc |
	doc := ArffDocument new.
	doc
		relation: 'temperature';
		addDateAttribute: 'time' format: 'yyyy-MM-dd HH:mm:ss';
		addNumericAttribute: 'temperature';
		addNominalAttribute: 'weather' specification: #('sunny' 'cloudy').

	doc
		addInstance: #('2015-01-01 12:00:00' 5  'sunny');
		addInstance: #('2015-02-01 18:40:00' 8  'sunny');
		addInstance: #('2015-03-01 05:04:00' 3  'cloudy');
		addInstance: #('2015-04-01 13:01:20' 15 'cloudy');
		addInstance: #('2015-05-01 09:07:00' 12  'sunny');
		addInstance: #('2015-06-01 12:20:00' 6  'cloudy').

	^ doc