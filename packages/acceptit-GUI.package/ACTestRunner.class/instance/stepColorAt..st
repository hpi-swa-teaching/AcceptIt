accessing
stepColorAt: anIndex

	| failBlock |
	failBlock := [^ self class colors at: #default].

	^ showUserStory 
		ifTrue:[Color black]
		ifFalse:[ |scenario status statuus |
			scenario := scenarios at: scenarioIndex.
			statuus := result stepStatus at: scenario ifAbsent: failBlock.
			status := (statuus includes: #all) 
				ifTrue: [statuus at: #all] "fallback, eg errors in setup"
				ifFalse: [|source pt sourceId parser |
					source := scenario testMethodSource asString.
					parser := AcceptitScenarioParser new.
					pt := parser annotatedTree: source.
					(pt ~= false) 
						ifFalse: failBlock.		
					sourceId := (self class listForParseTree: pt) at: anIndex ifAbsent: failBlock.
					statuus at: sourceId  ifAbsent: failBlock].
			self class colors at: status ifAbsent: failBlock]