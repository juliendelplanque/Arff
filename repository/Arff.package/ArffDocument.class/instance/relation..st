accessing
relation: aStringOrArffRelation
	aStringOrArffRelation class = ArffRelation
		ifTrue: [ 
			relation := aStringOrArffRelation.
			^ self ].
	relation := ArffRelation new
						relationName: aStringOrArffRelation;
						yourself