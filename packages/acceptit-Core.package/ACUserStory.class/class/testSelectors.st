accessing
testSelectors

	^ (Pragma allNamed: #scenario in: self)
			collect: [:pragma | pragma selector]
