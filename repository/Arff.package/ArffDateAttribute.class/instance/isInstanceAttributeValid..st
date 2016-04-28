testing
isInstanceAttributeValid: anInstanceAttribute
	^ (super isInstanceAttributeValid: anInstanceAttribute)
			or: [ anInstanceAttribute isString
				or: [ anInstanceAttribute class = DateAndTime ] ]