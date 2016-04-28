*Arff
asArffAttribute
	self = #?
		ifFalse: [ NotAnArffAttribute signal ].
	^ ArffUnknownAttribute new