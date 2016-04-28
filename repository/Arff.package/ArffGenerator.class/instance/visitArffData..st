visiting
visitArffData: anArffData
	stream
		<< '@data';
		lf.
	anArffData instances doWithIndex: [ :instance :i |
		instance doWithIndex: [ :item :j |
			|att|
			att := self stack top attributes at: j.
			item arffStringOn: stream withAttribute: att.
			instance size ~= j
				ifTrue: [ stream << $, ] ].
		anArffData instances size ~= i
			ifTrue: [ 
				stream << Character lf ] ]