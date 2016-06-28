accessing
verbsMethodCache
	"Answer the value of verbsMethodCache"

	^ verbsMethodCache ifNil: [
		verbsMethodCache := self class createNewVerbsMethodCache]
