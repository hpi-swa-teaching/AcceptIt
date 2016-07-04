accessing
currentLine
	"Answer the value of currentLine"
	^(currentLine isNil)
		ifTrue: [1]
		ifFalse: [currentLine]