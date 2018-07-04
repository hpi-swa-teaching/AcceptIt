*acceptit-Core
addMethodDefinitionsForClass: className methodProperties: methodProperties in: entries extensionMethod: extensionMethod
    entries
        do: [ :entry | 
            | classIsMeta |
            classIsMeta := false.
            entry name = 'class'
                ifTrue: [ classIsMeta := true ].
            (entry name = 'instance' or: [ entry name = 'class' ])
                ifTrue: [ 
                    ((self fileUtils directoryFromEntry: entry) entries select: [ :each | each name endsWith: '.st' ])
                        do: [ :methodEntry | 
                            methodEntry
                                readStreamDo: [ :fileStream | 
                                    | category source timestamp selector |
                                    category := fileStream nextLine.
                                    source := fileStream upToEnd.
                                    
						((source at: 1) == '(')
						ifTrue: [
							selector := ACLibraryParser new parseSelector: source.]
						ifFalse: [
						selector := self methodSelectorFor: source.].
						"selector := (Smalltalk classNamed: className) parserClass new parseSelector: source."
                                    timestamp := methodProperties
                                        at:
                                            (classIsMeta
                                                ifTrue: [ 'class' ]
                                                ifFalse: [ 'instance' ])
                                        ifPresent: [ :map | map at: selector asString ifAbsent: [  ] ].	"Issue 33: https://github.com/dalehenrich/filetree/issues/33"
                                    timestamp
                                        ifNil: [ timestamp := self info author , ' ' , self info date mmddyyyy , ' ' , self info time print24 ].
                                    extensionMethod
                                      ifTrue: [ self validateExtensionMethodCategory: category for: className selector: selector ].
                                    definitions
                                        add:
                                            (MCMethodDefinition
                                                className: className
                                                classIsMeta: classIsMeta
                                                selector: selector
                                                category: category
                                                timeStamp: timestamp
                                                source: source) ] ] ] ]
