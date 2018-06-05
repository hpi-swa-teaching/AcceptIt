as yet unclassified
compiledStepExample

	^ 'thenIExpectAToBeaBoolArgs: privateArgsCollection
	<stepTag: #then>
	<stepMatch: ''I expect A to be *''>
	<step: ''I expect A to be :aBool''>
	[:aBool | 	self assert: [MySuperCalculatorTESTLibrary a ~= aBool].]
		valueWithPossibleArgs: privateArgsCollection asArray'