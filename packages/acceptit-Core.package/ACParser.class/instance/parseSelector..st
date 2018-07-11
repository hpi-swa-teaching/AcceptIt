parsing
parseSelector: aString

	| codeToParse evaluator match anotherString|
	
	anotherString := aString copyReplaceAll: '
' with: '
'.
	"Tranforming lf to cr because currnetly Ohm only supports cr (Charcodes are 10 and 13)"
	
	evaluator := self grammar synthesizedAttribute: self semantic new.
	(match := self grammar match: anotherString startingFrom: self startRule ).
	(match failed)
		ifTrue: [
			codeToParse := anotherString "fallback. especially for St-classes".
			^self stdParser parseSelector: codeToParse ].
	codeToParse := self buildCode: (evaluator value: match). 
	^self stdParser parseSelector: codeToParse 