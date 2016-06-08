as yet unclassified
testWithHaveAsString
	"comment stating purpose of message"
	
	|testString expectedString |
	testString := 'have a WebSite'.
	expectedString := 'has a WebSite'.
	self assert:  (testString withLeadingAuxiliaryNormalized) = expectedString.