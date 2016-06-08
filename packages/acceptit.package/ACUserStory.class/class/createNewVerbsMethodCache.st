as yet unclassified
createNewVerbsMethodCache 

	^ IdentityDictionary new
		at: #given put: Dictionary new;
		at: #when put: Dictionary new;
		at: #then put: Dictionary new;
		yourself