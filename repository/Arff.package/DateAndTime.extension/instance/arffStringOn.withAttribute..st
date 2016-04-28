*Arff
arffStringOn: aStream withAttribute: anAttribute
	aStream << $".
	[ self perform: anAttribute formatter with: aStream ]
		on: MessageNotUnderstood
		do: [ InexistantFormatter signal: ('{1} message does not exists in {2}.' format: { anAttribute formatter . self className }) ].
	aStream << $"