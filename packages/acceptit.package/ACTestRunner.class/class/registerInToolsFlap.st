as yet unclassified
registerInToolsFlap
	self environment at: #Flaps ifPresent: [ :class |
		class
			registerQuad: #( ACTestRunner build 'Scenario Runner' 'A production scale test-runner.' ) forFlapNamed: 'Tools';
			replaceToolsFlap ].