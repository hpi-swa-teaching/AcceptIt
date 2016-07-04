as yet unclassified
colors

	^ colors ifNil: [colors := IdentityDictionary new
		at: #passed put: Color green muchDarker;
		at: #failed put: Color yellow muchDarker;
		at: #error put: Color red muchDarker;
		at: #skipped put: Color blue muchDarker;
		at: #default put: Color black;
		yourself]