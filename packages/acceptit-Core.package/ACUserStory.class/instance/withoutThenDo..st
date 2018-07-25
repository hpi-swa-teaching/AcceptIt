internal verbs
withoutThenDo: aBlock

	^ (self skipSymbols includes: #then)
		ifFalse: [
			self skipSymbols add: #then.
			aBlock ensure: [self skipSymbols remove: #then]]
		ifTrue: [aBlock value]