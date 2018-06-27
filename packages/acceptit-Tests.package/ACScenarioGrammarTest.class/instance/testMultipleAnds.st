as yet unclassified
testMultipleAnds
"This only tests if the semantic throws exceptions so far"
	|scenario match|
	scenario := 
'Hello World

Given I have a web site
And I am not logged in
And something
When I go to the web site
And I click ''Login''
And something more
Then I see ''Hello''
And I see ''World''
And I am definitely not out of ideas'.
	match := ACScenarioGrammar match: scenario startingFrom: #fullScenario.
	self assert: ((ACScenarioGrammar synthesizedAttribute: ACScenarioSemantic new) value: match) class equals: Dictionary.