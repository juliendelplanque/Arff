visiting
visitArffDocument: anArffDocument
	self stack push: anArffDocument.
	anArffDocument relation accept: self.
	anArffDocument attributes do: [ :attribute |
		attribute accept: self ].
	anArffDocument data accept: self.
	self stack pop