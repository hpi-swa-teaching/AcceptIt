as yet unclassified
methodHead: aNode 
withTag: aTag 
andWords: words 
andParameterOrWord: parameterOrWord
andLinebreak: linebreak

|wordCollection parameterCollection tag returnDictionary|

tag := self value: aTag.
wordCollection := (self value: words), (self value: parameterOrWord).
parameterCollection := wordCollection select: [ :element| (element key) == #parameter].
returnDictionary := Dictionary new.
returnDictionary at: #tag put: tag.
returnDictionary at: #words put: wordCollection.
returnDictionary at: #parameters put: parameterCollection.
^returnDictionary  

 
	