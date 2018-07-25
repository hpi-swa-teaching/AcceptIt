accessing
findScenariosForClasses: aCollection

	aCollection isEmpty 
		ifTrue: [  ^{}].
	^ aCollection inject: Set new into: [ :set :class | 
		set addAll: (class allTestSelectors collect: [:selector |class selector: selector]).
		set]