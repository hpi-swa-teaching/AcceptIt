helper
parseTree

	|eval|
	eval := AcceptitUserstoryGrammar synthesizedAttribute: AcceptitUserstorySemantic new.  
	^ (eval value:( 
		AcceptitUserstoryGrammar matchContents:   
'A Name For Testing
In order to impress the ladies
As a Casanova
I want Prosecco' 		 
		startingFrom: #userstory)), ' category: ''Generated'''.