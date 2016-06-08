as yet unclassified
annotatedTreeScenario:  aNode 
withName: aName 
andLinebreak: linebreak1 
andLinebreak: linebreak2
andScenario: aScenario

	|parseTree codeCollection|
	
	self currentLine: 1.
	parseTree := OrderedCollection new.
	parseTree add: #annotated. 
	parseTree  add: (OrderedCollection new add: #scenario; yourself). 
	parseTree second add: (OrderedCollection new add: #title; add: (aName interval contents); yourself).
	self value: linebreak1.
	self value: linebreak2.  
	codeCollection := self value: aScenario. 
	{#given. #when. #then} do: [ :tag|
		|toAdd|
		toAdd := (codeCollection 
				select: [ :node| node first = tag]) 
				collect: [ :node| node := (node last -> node second)].
		parseTree second add: (OrderedCollection new add: tag; addAll: toAdd; yourself).
		].
	^parseTree