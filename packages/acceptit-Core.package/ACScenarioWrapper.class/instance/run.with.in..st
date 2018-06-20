evaluation
run: aSelector with: anArray in: aReceiver

	self halt.
	^ aReceiver withArgs: anArray executeMethod: method
