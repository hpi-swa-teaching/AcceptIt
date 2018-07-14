initialize-release
initialize

	super initialize.
	self stepLibraries: OrderedCollection new.
	
	" initialize the delegate libraries"
	self stepLibraries addAll:(self class libraries collect: [:library | (library newForScenario: self)]).

	