testing
isInstanceAttributeValid: anInstanceAttribute
	^ anInstanceAttribute isString or: [ anInstanceAttribute class = DateAndTime ]