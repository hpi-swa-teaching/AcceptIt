accessing
findScenariosForClasses: aCollection

	aCollection isEmpty 
		ifTrue: [  ^{}].
	^ aCollection inject: Set new into: [ :set :class | 
		class allTestSelectors do: [:selector | set add: (class selector: selector)].
		set]