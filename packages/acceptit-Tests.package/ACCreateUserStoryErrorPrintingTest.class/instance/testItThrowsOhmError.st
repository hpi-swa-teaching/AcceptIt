as yet unclassified
testItThrowsOhmError
	self should:[ACUserStoryParser new parseStoryToDictionary: 'asdfqwe'] raise: OhmMatchFailure .