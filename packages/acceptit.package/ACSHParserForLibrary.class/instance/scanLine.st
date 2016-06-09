scan
scanLine

	self inScanLine: true.
	"(given)"
	bracketDepth := bracketDepth + 1.
	self scanPast: #leftParenthesis level: bracketDepth.
	self parseUnaryMessagePattern.
	self failUnless: currentTokenFirst == $).
	self scanPast: #rightParenthesis level: bracketDepth.
	bracketDepth := bracketDepth - 1.
	
	[self atEndOfLine] whileFalse: [
		self parseUnaryMessagePattern.
		(currentTokenFirst == $:)
			ifTrue: [
				self scanPast: #blockArgColon.
				self failUnless: self isName.
				self scanPast: #blockPatternArg].
	].
	self inScanLine: false.
	self scanNext.