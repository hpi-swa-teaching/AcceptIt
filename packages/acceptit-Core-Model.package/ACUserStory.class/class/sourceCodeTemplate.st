behavior-compiling
sourceCodeTemplate
	
	^ self looksLikeUserStoryHeir 
		ifTrue: [
'Name of scenario

Given some preconditions
And another preconditition
When a certain event is triggered
And another "action" is invoked
Then a criterion holds
And a second criterion should be valid']
		ifFalse: [super sourceCodeTemplate]
