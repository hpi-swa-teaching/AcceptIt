accessing
allTestSelectors

	^ (Pragma allNamed: #scenario in: self)
			collect: [:pragma | pragma selector]
