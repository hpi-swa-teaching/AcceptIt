as yet unclassified
title: aNode with: aBeginning and: aRest

	^aNode interval contents select: [:c| c ~= Character space] 