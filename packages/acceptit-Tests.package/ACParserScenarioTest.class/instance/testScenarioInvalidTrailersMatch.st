tests-Scenario
testScenarioInvalidTrailersMatch

|scenarioInvalidTrailers|
scenarioInvalidTrailers:= 'Given I have a web site
	When I go to the web site
	Then I see "Hello World"
	Yes, This would be awesome.'.
	
	self shouldnt: [self match: scenarioInvalidTrailers with: #fullScenario].
		