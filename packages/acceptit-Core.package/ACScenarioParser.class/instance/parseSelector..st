temporarily unused
parseSelector: aString

	| codeToParse anotherString|
	"Tranforming lf to cr because currnetly Ohm only supports cr (Charcodes are 10 and 13)"
	anotherString := aString copyReplaceAll: String lf with: String cr.	
	codeToParse := self translateCode: anotherString.
	tempString := codeToParse asString lines first.
	^self stdParser parseSelector: codeToParse asString