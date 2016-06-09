as yet unclassified
addWord: aNode withSpace: aSpace andWord: aWord

	|word|
	word := aWord interval contents.
	^#word->word