as yet unclassified
addLibraryMethods
	library class addInstVarName: 'a'.
	library class compile: 'a: aBool
  a := aBool.' classified: 'accessing'.
	library class compile: 'a
  ^a' classified: 'accessing'.