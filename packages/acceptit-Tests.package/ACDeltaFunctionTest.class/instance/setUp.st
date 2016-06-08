as yet unclassified
setUp

	super setUp.
	self klassName: #ACMyTestClass.
	"ensure its not there"
	self removeTestClass: self klassName.
