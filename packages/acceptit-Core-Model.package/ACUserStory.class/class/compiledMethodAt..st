accessing method dictionary
compiledMethodAt: selector 
	"Overriden to include Scenarios"

	^ self scenarioAndMethodDict at: selector