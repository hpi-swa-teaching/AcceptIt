*acceptit-Core
withLeadingAuxiliaryNormalized

	({
		{'am'.'are'.'is'} -> 'is'.
		{'have'.'has'} -> 'has'.
		{'shall'. 'should'} -> 'should'.
		{'may'. 'might'} -> 'may'.
		{'will'. 'would'} -> 'will'.
		{'can'.'could'} -> 'can'.
	} as: Dictionary) keysAndValuesDo: [:key :value|
		(self beginsWithAnyOf: key) 
			ifTrue:[^ value, String space, (self copyAfter: Character space)]].
		
	 ^ self