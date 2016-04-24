accessing
nominalSpecification: anArray
	self assert: anArray class = Array.
	self assert: (anArray anySatisfy: [ :any | (any isKindOf: String) not ]) not.
	nominalSpecification := anArray