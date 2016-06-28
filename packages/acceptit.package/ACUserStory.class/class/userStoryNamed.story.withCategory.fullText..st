instance creation
userStoryNamed: aName story: aStory withCategory: aCategory fullText: anObject

	| newClass evaluator code usParser|
	usParser := ACUserStoryParser new.
	evaluator := usParser grammar synthesizedAttribute: usParser semantic new.
	code := evaluator value: (
		usParser grammar matchContents: anObject startingFrom: usParser startRule  
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