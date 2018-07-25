helpers
trimedTitle: aText
	self flag: #refactor.	"Need to find place for helper methods like triming"
	^(aText lines at: 1) copyReplaceAll: ' ' with: ''.