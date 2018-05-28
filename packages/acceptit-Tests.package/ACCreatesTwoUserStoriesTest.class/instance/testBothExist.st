tests
testBothExist
	self assert: [self createdClass ~= nil].
	self assert: [self createdClass2 ~= nil]