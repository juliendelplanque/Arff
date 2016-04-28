testing
isInstanceAttributeValid: anInstanceAttribute
	^ (super isInstanceAttributeValid: anInstanceAttribute)
			or: [ self nominalSpecification includes: anInstanceAttribute ]