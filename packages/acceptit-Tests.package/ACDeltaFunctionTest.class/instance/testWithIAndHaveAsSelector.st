as yet unclassified
testWithIAndHaveAsSelector
	"comment stating purpose of message"
	
	|testString expectedString |
	testString := 'I have a WebSite'.
	expectedString := 'has a WebSite'.
	
	self assert:  (testString withoutLeadingSubject withLeadingAuxiliaryNormalized) = expectedString.