helper
removeTestClass: clsName

	clsName ifNotNilDo: [:name |
		(Smalltalk globals at: name ifAbsent: [^ self]) removeFromSystemUnlogged].