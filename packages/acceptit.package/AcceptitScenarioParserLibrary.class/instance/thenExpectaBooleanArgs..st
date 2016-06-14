as yet unclassified
(then) expect :aBoolean

	|match bool|
	
	bool := [aBoolean asLowercase = 'true'] value. 
	match := self grammar matchContents: (self scenarioText) startingFrom: (self parsingRule).
	self assert: [(match = false) not = bool]