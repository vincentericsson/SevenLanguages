squareBrackets := method(
	return call message arguments map(
		value,
		self doMessage(value)
	)
)

["a", "b", "c"] print