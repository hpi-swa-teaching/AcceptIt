as yet unclassified
registerInWorldMenu

	self environment at: #TheWorldMenu ifPresent: [ :class |
		class registerOpenCommand: (Array 
			with: 'Scenario Runner' 
			with: (Array
				with: self
				with: #open)) ].