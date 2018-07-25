method-highlighting
isEndOfLine: c

	^ ((c == Character cr)
	or: [c == Character lf])
	or: [c charCode = 12]
