initialization
initialize
	super initialize.
	stream := WriteStream on: String new.
	stack := Stack new