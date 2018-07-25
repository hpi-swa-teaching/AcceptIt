tests
testItThrowsOhmError
	self should:[ACUserStoryParser new parseStoryToDictionary: 'asdfqwe'] raise: OhmMatchFailure .