private
createUserStorySubclass: aName withCategory: aCategory

	^ACUserStory subclass: aName asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aCategory