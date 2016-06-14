helper
removeTestClass

	self klassName ifNotNilDo: [:name | 
		(Smalltalk globals at: name ifAbsent: [^ self]) removeFromSystemUnlogged].