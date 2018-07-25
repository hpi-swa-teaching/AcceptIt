parsing
parse: sourceStringOrString class: behavior 

	^self parse: sourceStringOrString readStream class: behavior
		noPattern: false context: nil notifying: nil ifFail: [^nil]