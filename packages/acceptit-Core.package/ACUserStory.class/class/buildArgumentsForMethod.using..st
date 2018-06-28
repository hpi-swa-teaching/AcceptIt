as yet unclassified
buildArgumentsForMethod: aMethod using: aString

	| selector |
	selector :=  (aMethod pragmas detect: [:pragma | pragma keyword = #step:]) arguments first.
	^ (ACTranslator 
		bindParametersInSelector: selector 
		toValuesIn: aString)
		collect: [:assoc | assoc value]