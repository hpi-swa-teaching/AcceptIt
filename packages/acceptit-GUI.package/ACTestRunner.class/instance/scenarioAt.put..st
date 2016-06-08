accessing
scenarioAt: anInteger put: aBoolean

	scenariosSelected := scenariosSelected
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (scenarios at: anInteger ifAbsent: [ ^ self ]).
			
	self updateSteps.