behavior-organization
organization
	
	true 
	ifFalse: [^super organization]
	ifTrue: [
	organization ifNil: [|list|
		self organization: (ACUserStoryOrganizer defaultList:  self scenarioAndMethodDict keys sort)].

	"Making sure that subject is set correctly. It should not be necessary."
	organization setSubject: self.
	^ organization].