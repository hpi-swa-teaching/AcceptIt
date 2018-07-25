compiling
compile: origCode in: cls classified: aCategory notifying: notify ifFail: failBlock

	|translatedCode|
	translatedCode:= self translateCode: origCode.
	self from: translatedCode class: cls notifying: notify.
	^ Compiler new
		compile: translatedCode readStream
		in: cls
		notifying: notify
		ifFail: failBlock
