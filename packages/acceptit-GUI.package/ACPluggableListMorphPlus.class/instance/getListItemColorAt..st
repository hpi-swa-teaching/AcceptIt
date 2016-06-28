as yet unclassified
getListItemColorAt: anIndex

	^ getListItemColorSelector 
		ifNotNil: [ self model perform: getListItemColorSelector withArguments: {anIndex}]
		ifNil: [ self halt Color black ]