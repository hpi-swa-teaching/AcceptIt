as yet unclassified
treeScenario:  aNode 
withName: aName 
andLinebreak: linebreak1 
andLinebreak: linebreak2
andScenario: aScenario

	|parseTree codeCollection|
	
	parseTree := OrderedCollection new.
	parseTree add: #scenario. 
	parseTree add: (OrderedCollection new add: #title; add: (aName interval contents); yourself).
	self value: linebreak1.
	self value: linebreak2.
	codeCollection := self value: aScenario. 
	{#given. #when. #then} do: [ :tag|
		|toAdd|
		toAdd := (codeCollection 
				select: [ :node| node first = tag]) 
				collect: [ :node| node := node second].
		parseTree add: (OrderedCollection new add: tag; addAll: toAdd; yourself).
		].
	^parseTree