as yet unclassified
buildACPluggableList: aSpec
	| widget listClass getIndex setIndex |
	aSpec getSelected ifNil:[
		listClass := ACPluggableListMorphPlus.
		getIndex := aSpec getIndex.
		setIndex := aSpec setIndex.
	] ifNotNil:[
		listClass := self listByItemClass.
		getIndex := aSpec getSelected.
		setIndex := aSpec setSelected.
	].
	widget := listClass on: aSpec model
				list: aSpec list
				selected: getIndex
				changeSelected: setIndex
				menu: aSpec menu
				keystroke: aSpec keyPress.
	self register: widget id: aSpec name.
	widget getListElementSelector: aSpec listItem.
	widget getListItemColorSelector: aSpec getListItemColor.
	widget getListSizeSelector: aSpec listSize.
	widget doubleClickSelector: aSpec doubleClick.
	widget dragItemSelector: aSpec dragItem.
	widget dropItemSelector: aSpec dropItem.
	widget wantsDropSelector: aSpec dropAccept.
	widget autoDeselect: aSpec autoDeselect.
	widget keystrokePreviewSelector: aSpec keystrokePreview.
	aSpec color isNil ifFalse: [widget color: aSpec color].
	self buildHelpFor: widget spec: aSpec. 
	self setFrame: aSpec frame in: widget.
	parent ifNotNil:[self add: widget to: parent].
	panes ifNotNil:[
		aSpec list ifNotNil:[panes add: aSpec list].
	].
	^widget