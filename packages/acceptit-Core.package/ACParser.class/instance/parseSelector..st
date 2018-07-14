parsing
parseSelector: aString

	| codeToParse anotherString|
	"Tranforming lf to cr because currnetly Ohm only supports cr (Charcodes are 10 and 13)"
	anotherString := aString copyReplaceAll: '
' with: '
'.
	codeToParse := self translateCode: aString.
	^self stdParser parseSelector: codeToParse 