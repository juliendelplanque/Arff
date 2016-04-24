adding
addInstance: anInstance
	self assert: anInstance class = Array.
	instances add: anInstance