public access
compile: origCode in: cls classified: aCategory notifying: notify ifFail: failBlock

	| origCodeStream translatedCode node evaluator match|
	origCodeStream := origCode asString readStream.
	self from: origCodeStream class: cls notifying: notify.
	evaluator := self grammar synthesizedAttribute: self semantic new.
	match := self grammar matchContents: origCode startingFrom: self startRule.
	(match == false) 
		ifTrue:[
			translatedCode := origCodeStream
			] 
		ifFalse: [
			translatedCode := (evaluator value: match) readStream 
			].
	node := self class superclass new
		compile: translatedCode
		in: cls
		notifying: notify
		ifFail: failBlock.
	^ node selector: (origCode asString lines first asSymbol); yourself