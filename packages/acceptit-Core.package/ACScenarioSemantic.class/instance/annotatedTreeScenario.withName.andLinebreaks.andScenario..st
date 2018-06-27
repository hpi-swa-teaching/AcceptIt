ohm interface
annotatedTreeScenario:  aNode 
withName: aName 
andLinebreaks: linebreaks
andScenario: aScenario

	|parseTree codeCollection|
	self currentLine: 1.
	parseTree := OrderedCollection new.
	parseTree add: #annotated. 
	parseTree  add: (OrderedCollection new add: #scenario; yourself). 
	parseTree second add: (OrderedCollection new add: #title; add: (aName interval contents); yourself).
	self value: linebreaks.
	codeCollection := self value: aScenario. 
	{#given. #when. #then} do: [ :tag|
		|toAdd|
		toAdd := (codeCollection 
				select: [ :node| node first = tag]) 
				collect: [ :node| node := (node last -> node second)].
		parseTree second add: (OrderedCollection new add: tag; addAll: toAdd; yourself).
		].
	^parseTree