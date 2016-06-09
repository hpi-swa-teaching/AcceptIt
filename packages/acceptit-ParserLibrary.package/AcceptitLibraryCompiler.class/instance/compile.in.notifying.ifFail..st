public access
compile: origCode in: cls notifying: notify ifFail: failBlock

	^ self compile: origCode in: cls classified: 'as yet unclassified' notifying: notify ifFail: failBlock