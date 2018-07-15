as yet unclassified
addErroneousSteps
	library compile: 'given A is :aBool
  MySuperCalculatorTESTLibrary a: aBool.' classified: 'steps'.
	library compile: 'when I do nothing
' classified: 'steps'.
	library compile: 'then I expect A to be :aBool
	1/0.' classified: 'steps'.