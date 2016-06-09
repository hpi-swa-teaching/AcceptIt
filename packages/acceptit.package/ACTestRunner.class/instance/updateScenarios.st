updating
updateScenarios

	| scenariosForClasses |
	scenariosForClasses := self findScenariosForClasses: classesSelected.
	scenarios := scenariosForClasses asArray
		sort: [ :a :b | a printString <= b printString ].
	scenarioIndex := 0.
	scenariosSelected := scenariosSelected isNil
		ifTrue: [ scenariosForClasses ]
		ifFalse: [ 
			scenariosSelected
				select: [ :each | scenariosForClasses includes: each ] ].
	self changed: #scenarioList; changed: #scenarioSelected; changed: #hasRunnable.
