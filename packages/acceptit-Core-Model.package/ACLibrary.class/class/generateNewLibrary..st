provisioning
generateNewLibrary: aClassOrSymbol
	"inspiration from Browser>>#copyClass"
	
	| newClass newClassName newCategory newInstVars oldClass |
	oldClass  := aClassOrSymbol isSymbol
		ifFalse: [aClassOrSymbol isBehavior ifTrue: [aClassOrSymbol] ifFalse: [Object]]
		ifTrue: [Smalltalk globals at: aClassOrSymbol ifAbsent: [Object]].
	
	newClassName := (aClassOrSymbol asString, 'Library') asSymbol.
	newCategory := (oldClass == Object)
		ifTrue: ['Generated'] 
		ifFalse: [oldClass category].

	newInstVars := (oldClass allInstVarNames includes: 'scenario')
		ifTrue: [self inform: oldClass name, ' already has ''scenario'' instance variable. 
			Please take care of that.'. ''] 
		ifFalse: ['scenario'].
	oldClass 
		subclass: newClassName  
		instanceVariableNames: newInstVars 
		classVariableNames: '' 
		poolDictionaries: '' 
		category: newCategory.
	newClass := Smalltalk globals at: newClassName.
	newClass class
		instanceVariableNames: ''.
	
	"get things going"
	newClass theNonMetaClass copyAllCategoriesFrom: self theNonMetaClass.
	newClass theMetaClass copyAllCategoriesFrom: self theMetaClass.
	newClass theMetaClass removeSelector: #generateNewLibrary:. "pay attention here!"
	newClass comment: newClass name, ' is an acceptit library.'.
	
	^ newClass
