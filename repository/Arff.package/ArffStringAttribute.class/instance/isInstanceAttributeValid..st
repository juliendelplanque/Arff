testing
isInstanceAttributeValid: anInstanceAttribute
	^ (super isInstanceAttributeValid: anInstanceAttribute)
			or: [ anInstanceAttribute isString ]