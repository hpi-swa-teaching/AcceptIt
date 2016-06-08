accessing
stepList
	^ showUserStory 
		ifTrue:[ (classIndex = 0) ifTrue: [{}] ifFalse:[(classes at: classIndex) userStoryString lines]]
		ifFalse:[
			scenarioIndex = 0
				ifTrue:[{}]
				ifFalse:[ |sc|
					sc := (scenarios at: scenarioIndex).
					(sc class compiledMethodAt: sc selector) getSource asString lines]]
		
	
			
	
