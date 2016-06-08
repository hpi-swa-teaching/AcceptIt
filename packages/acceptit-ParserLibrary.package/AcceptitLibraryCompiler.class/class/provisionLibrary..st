as yet unclassified
provisionLibrary: aString
	"like ACLibrary generateFromClass: but thinner."
	| newLibrary |
	newLibrary  := Object subclass: aString asSymbol instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'Generated'.
	
	{ 
	'parserClass

^ AcceptitLibraryParser
'.

	'compilerClass

	^AcceptitibraryCompiler
'
	} do: [:methodSource | 
		newLibrary theMetaClass 
			compile: methodSource
			notifying: nil.
	].	
	^ newLibrary