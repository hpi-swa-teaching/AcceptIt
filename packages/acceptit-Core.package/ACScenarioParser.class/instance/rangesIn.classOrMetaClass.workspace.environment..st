temporarily unused
rangesIn: sourceString classOrMetaClass: aBehaviour workspace: aWorkspace  environment: anEnvironmentOrNil

	| line |
	sourceString lines ifEmpty: [^{}].
	line := sourceString lines first.
	^{ SHRange start: 1 end: line size type: #patternKeyword }