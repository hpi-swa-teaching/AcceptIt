as yet unclassified
looksLikeUserStoryHeir
	"During recompilation of the ACUserStory class, all of
	#==, #inheritsFrom:, or #isKindOf: will fail, so we have to rely
	on the name of the class and walk the superclasses ourselves"
	
	self allSuperclassesDo: [:cls |
		cls name = #ACUserStory
			ifTrue: [^ true]].
	^ false