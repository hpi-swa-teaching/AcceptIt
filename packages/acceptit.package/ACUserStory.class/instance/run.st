private
run
	| result |
	result := ACScenarioResult new.
	self run: result.
	^result
			