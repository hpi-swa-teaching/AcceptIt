as yet unclassified
arrayForParseTree: aParseTree
	
	| pureTree|
	"format tests"
	(aParseTree first ~= #annotated) ifTrue: [^ {}].
	pureTree := aParseTree second.
	(pureTree first ~= #scenario) ifTrue: [^ {}].
	(pureTree second first ~= #title) ifTrue: [^ {}].
	"actual."
	


 {#annotated . 
	{#scenario . #(#title 'Hello World Test') . 
	{#given . 2->'I have a web site'} . 
	{#when . 3->'I go to the web site' . 4->'I go to the web site'} . 
	{#then . 5->'I see "Hello World"' . 6->'I see "Hello World"'}}}