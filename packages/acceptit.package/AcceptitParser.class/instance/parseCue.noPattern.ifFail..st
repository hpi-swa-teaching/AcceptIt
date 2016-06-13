parsing
parseCue: aCue noPattern: noPattern ifFail: failblock
	
	Transcript show: aCue sourceStream contents.
	"self assert: [false]"
	self stdParser parseCue: aCue noPattern: noPattern ifFail: failblock.