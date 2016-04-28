adding
addInstance: anArray
	anArray doWithIndex: [ :item :i |
		((self attributes at: i) isInstanceAttributeValid: item)
				ifFalse: [ InvalidAttribute
								signal: ('{1} is not a valid attribute for the position {2} in instance.' format: {item . i}) ] ].
	self data addInstance: anArray