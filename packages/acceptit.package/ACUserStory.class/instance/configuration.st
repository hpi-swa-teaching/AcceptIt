running
configuration

	^ configuration ifNil: [
		self configuration: IdentityDictionary new.
		self stepLibraries do: [:library |
			(library respondsTo: #buildDefaultConfiguration:) ifTrue: [
				library buildDefaultConfiguration: configuration]].
		self class buildConfiguration: configuration.
		configuration].
	