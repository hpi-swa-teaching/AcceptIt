as yet unclassified
listForParseTree: aParseTree
	
	| pureTree verbTree list max |
	max := 0.
	"format tests"
	(aParseTree first ~= #annotated) ifTrue: [^ {}].
	pureTree := aParseTree second.
	(pureTree first ~= #scenario) ifTrue: [^ {}].
	(pureTree second first ~= #title) ifTrue: [^ {}].
	"actual."
	verbTree := pureTree allButFirst: 2.
	verbTree do: [ :verbArray |
		verbArray allButFirst do: [:assoc | 
			max := max max: assoc key]].
	list := Array new: max.
	verbTree do: [ :verbArray | | verb |
		verb := verbArray first.
		verbArray allButFirst do: [:assoc | 
			list at: assoc key put: verb -> assoc value]].

	^ list

