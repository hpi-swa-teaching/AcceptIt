accessing
stepSelected
	
	^ stepIndex = nil 
		ifTrue:[ 0 ]
		ifFalse:[ stepIndex ]