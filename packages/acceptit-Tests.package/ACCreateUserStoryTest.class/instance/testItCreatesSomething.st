as yet unclassified
testItCreatesSomething
|createdClass|
ACUserStory userStoryNamed: 'ACCalculatorUserStory' 
story: self basicUserStory
withCategory: 'acceptitTest-calculator'
fullText: self basicUserStory.
createdClass := Smalltalk classNamed: 'ACCalculatorUserStory'.
self assert: [createdClass ~= nil].
self assert: [createdClass category = 'acceptitTest-calculator'].
self assert: [createdClass name = 'ACCalculatorUserStory'].
createdClass removeFromSystemUnlogged.