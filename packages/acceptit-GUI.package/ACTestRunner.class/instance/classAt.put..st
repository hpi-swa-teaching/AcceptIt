accessing
classAt: anInteger put: aBoolean
	classesSelected := classesSelected
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (classes at: anInteger ifAbsent: [^ self ]).
		self updateScenarios.
	self changed: #classSelected; changed: #updateScenarios; changed: #hasRunnable.