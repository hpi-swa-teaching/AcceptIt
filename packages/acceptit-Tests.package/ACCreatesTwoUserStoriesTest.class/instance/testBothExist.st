as yet unclassified
testBothExist
	self assert: [self createdClass ~= nil].
	self assert: [self createdClass2 ~= nil]