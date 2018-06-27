accessing-ui
findCategories
	| visible |
	visible := Set new.
	self baseClass allSubclassesDo: [ :each |
		each category ifNotNil: [ :category |
			visible add: category ] ].
	^ Array streamContents: [ :stream |
		visible do: [ :each | stream nextPut: each ] ].