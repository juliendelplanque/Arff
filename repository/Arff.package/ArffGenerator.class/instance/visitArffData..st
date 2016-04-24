visiting
visitArffData: anArffData
	stream
		<< '@data';
		lf.
	anArffData instances doWithIndex: [ :instance :i |
		instance doWithIndex: [ :item :j |
			item arffStringOn: stream.
			instance size ~= j
				ifTrue: [ stream << $, ] ].
		anArffData instances size ~= i
			ifTrue: [ 
				stream << Character lf ] ]