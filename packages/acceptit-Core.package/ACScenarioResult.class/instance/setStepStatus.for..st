acceptit tests
setStepStatus: lastStatus for: aTestCase

	| currentStep statuus |
	currentStep :=  aTestCase currentStep. 
	"step where error/failure occured: (string->verb) -> method"
	
	statuus := self stepStatus at: aTestCase 
		ifAbsentPut: [Dictionary new].
	
	"process previous steps"
	aTestCase stepsDone do: [:assoc |
		statuus at: assoc key put: #passed].
	
	
	statuus at: (currentStep 
			ifNil: [#all]
			ifNotNil: [:cs | cs key])
		put: lastStatus.
