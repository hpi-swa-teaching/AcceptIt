accessing method dictionary
classNamesNotUnderTest
"This removes ACUserStory from the coverage report. It's necessary because coverage works by wrapping CompiledMethods, which in our case messes with the functionality of this class. This results in a VM crash if you test in a headless state (like on travis with SmalltalkCI) with coverage reporting turned on."
	^ {self name asString}