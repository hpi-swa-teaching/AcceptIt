public access
compile: origCode in: cls notifying: notify ifFail: failBlock

	^self compile: origCode in: cls classified: 'scenario' notifying: notify ifFail: failBlock