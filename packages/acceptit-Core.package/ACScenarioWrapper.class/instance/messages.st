proxied protocol
messages

	| messages pt targetSubject parser|
	self halt.
	parser := self parserClass new.
	messages := method messages.
	targetSubject := method methodClass selector: method selector. "should be an ACUserStory"
	pt := parser parseTree: (method getSource asString).
	pt allButFirst "withoutTag, i.e. scenario"
		do: [:subTree |
			(#(given when then) includes: subTree first) ifTrue: ["valid verb"
				|verb |
				verb := subTree first.
				subTree allButFirst do: [:actionString | "all strings for that tag"
					[(targetSubject methodForVerb: verb andStep: actionString) selector
						ifNotNil: [:selector |
							messages add: selector]
					] on: NotYetImplemented do: [:error | "fallthrough" ]]]].
	^ messages
