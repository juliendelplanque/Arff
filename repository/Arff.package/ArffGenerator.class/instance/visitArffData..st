visiting
visitArffData: anArffData
	stream
		<< '@data';
		lf.
	anArffData instances doWithIndex: [ :instance :i |
		instance doWithIndex: [ :item :j |
			|att|
			att := self stack top attributes at: j.
			(att isInstanceAttributeValid: item)
				ifFalse: [ InvalidAttribute
								signal: ('{1} is not a valid attribute for the position {2} in instance.' format: {item . j}) ].
			item arffStringOn: stream withAttribute: att.
			instance size ~= j
				ifTrue: [ stream << $, ] ].
		anArffData instances size ~= i
			ifTrue: [ 
				stream << Character lf ] ]