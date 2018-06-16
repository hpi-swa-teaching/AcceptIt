accessing method dictionary
scenarioAndMethodDict

	"1 halt."
	^ self methodDict inject: MethodDictionary new into: [:md :cMeth | 
		((cMeth respondsTo: #pragmaAt:) 
			ifFalse: [nil] "protect from unnormal cirumstances"
			ifTrue: [cMeth pragmaAt: #scenario])
				ifNil: ["normal method" md at: cMeth selector put: cMeth; yourself]
				ifNotNil: [md at: (cMeth getSource asString lines first copyReplaceAll: ' ' with: '') asSymbol put: cMeth; yourself]].