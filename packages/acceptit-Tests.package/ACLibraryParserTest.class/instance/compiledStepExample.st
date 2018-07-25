constants
compiledStepExample

	^ 'thenIExpectAToBeaBoolArgs: privateArgsCollection
	<stepTag: #then>
	<stepMatch: ''I expect A to be *''>
	<step: ''I expect A to be :aBool''>
	[:aBool | 	self assert: [true = true].]
		valueWithPossibleArgs: privateArgsCollection asArray'