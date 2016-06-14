instance creation
userStoryNamed: aName story: aStory withCategory: aCategory fullText: anObject

	| newClass evaluator code|
	evaluator := AcceptitUserstoryGrammar synthesizedAttribute: AcceptitUserstorySemantic new.
	code := evaluator value: (
		AcceptitUserstoryGrammar matchContents: anObject startingFrom: #userstory  
		). 
	code := code, String cr, 'category: ''', aCategory, ''''. 
	newClass := (Compiler 
		evaluate: code
		notifying: nil 
		logged: true).
	newClass class 
		compile: (self initializationTemplateForClass: newClass named: aName story: aStory)
		classified: 'initialize-release'.
	^ newClass initialize