helper
directClassWithVariablesSet

	| theKlass |
	theKlass := (ACUserStory subclass: self klassName
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: ACUserStory category).
	^ theKlass purpose: 'impress the ladies'; role: 'Casanova'; means: 'Prosecco'.