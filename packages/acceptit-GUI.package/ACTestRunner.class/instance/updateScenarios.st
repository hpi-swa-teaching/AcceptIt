updating
updateScenarios

	| scenariosForClasses |
	scenariosForClasses := self findScenariosForClasses: classesSelected.
	scenarios := scenariosForClasses asArray
		sort: [ :a :b | a printString <= b printString ].
	scenarioIndex := 0.
	scenariosSelected :=  scenariosSelected isNil
		ifTrue: [ scenariosForClasses ]
		ifFalse: [ 
			scenariosForClasses select: [ :newScenario |
				 scenariosSelected contains: [ :oldScenario |
					 oldScenario asString = newScenario asString ] ] ].
	self changed: #scenarioList; changed: #scenarioSelected; changed: #hasRunnable.
