accessing
currentStep: anObject
	"Set the value of currentStep"

	self stepsDone add: anObject.
	currentStep := anObject.