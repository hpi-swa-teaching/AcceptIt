instance creation
userStoryNamed: aName story: aStory withCategory: aCategory fullText: anObject

	| newClass evaluator code usParser|
	usParser := ACUserStoryParser new.
	evaluator := usParser grammar synthesizedAttribute: usParser semantic new.
	code := usParser buildCode: (evaluator value: (
		usParser grammar match: anObject startingFrom: usParser startRule  
		)). 
	code := code, String cr, 'category: ''', aCategory, ''''. 
	newClass := (Compiler 
		evaluate: code
		notifying: nil 
		logged: true).
	newClass class 
		compile: (self initializationTemplateForClass: newClass named: aName story: aStory)
		classified: 'initialize-release'.
	^ newClass initialize