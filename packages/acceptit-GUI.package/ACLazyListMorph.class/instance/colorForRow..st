as yet unclassified
colorForRow: row
	
	^(selectedRow notNil and: [ row = selectedRow])
		ifTrue: [ self class listSelectionTextColor ]
		ifFalse: [ listSource getListItemColorAt: row ].