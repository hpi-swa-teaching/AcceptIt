ohm interface
addParameter: aNode withSpace: aSpace andParameter: aParameter

	|parameter|
	parameter := aParameter interval contents allButFirst.  
	^#parameter->parameter