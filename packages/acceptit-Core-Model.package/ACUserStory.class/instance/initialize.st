initialize-release
initialize

	super initialize.
	self stepLibraries: OrderedCollection new.
	
	" initialize the delegate libraries"
	self class libraries do: [:library |
		self stepLibraries add: (library newForScenario: self)].

	