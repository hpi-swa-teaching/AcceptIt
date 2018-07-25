as yet unclassified
provisionLibrary: aString
	"like ACLibrary generateFromClass: but thinner."
	"Note from Jascha: Can probably be removed"
	
	| newLibrary |
	newLibrary  := Object 
						subclass: aString asSymbol 
						instanceVariableNames: '' 
						classVariableNames: '' 
						poolDictionaries: '' 
						category: 'AcceptitGenerated'.
	{ 
	'parserClass

^ AcceptitLibraryParser
'.
	'shoutParserClass

	^ (self class = ACLibrary class)
		ifTrue: [super shoutParserClass]
		ifFalse: [ACSHParserForLibrary2]
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