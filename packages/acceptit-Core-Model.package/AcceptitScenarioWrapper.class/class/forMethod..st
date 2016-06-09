as yet unclassified
forMethod: compiledMethod

	^ self basicNew initializeWithMethod: compiledMethod
	"NO yourself in here, ProtoObject does not know about it and we would
	end up with the compiledMethod"