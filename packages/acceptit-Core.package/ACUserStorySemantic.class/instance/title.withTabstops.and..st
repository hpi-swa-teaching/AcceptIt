ohm interface
title: aNode withTabstops: tabstops and: aText

	|title|
	title := aText interval contents select: [:c| c ~= Character space].
	^(title first isDigit) 
		ifTrue: ['V', title]
		ifFalse: [title first asUppercase asString, title allButFirst] 