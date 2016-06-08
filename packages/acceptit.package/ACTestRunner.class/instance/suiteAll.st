building
suiteAll
	^ ACTestSuite new in: [ :suite |
			suite addTests: scenariosSelected.
			suite name: (self label: 'Test' forSuite: suite) ].