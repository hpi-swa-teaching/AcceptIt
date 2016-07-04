accessing
scenarioAt: anIndex

	^ scenariosSelected includes: (scenarios at: anIndex ifAbsent: [ ^ false ]).