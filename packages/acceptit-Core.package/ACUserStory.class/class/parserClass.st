behavior-compiling
parserClass

	self name = #ACUserStory
		ifFalse: [
			" this is only necessary to avoid a (inapplicable) warning from the Browser"
			 "((thisContext client isKindOf: Browser) and: [
				(thisContext sender selector = #validateMessageSource:forSelector:) or:  [
				thisContext sender selector =	#validateMessageSource:forSelector:inClass: ]])
					ifTrue: [^ACUSParser]"
			^ ACScenarioParser].
	^ super parserClass
