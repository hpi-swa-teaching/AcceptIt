as yet unclassified
serializedGrammar
^ 'AcceptitLibraryGrammar <: BaseGrammar {

addParameter = space parameter

addWord = space word

anyText = any*

given = "(" "given" ")"

linebreak = "\n"

method = methodHead methodBody

methodBody = anyText

methodHead = tag (addWord)+ (addParameter | addWord)* linebreak

parameter = ":" word

space := " "

tab = "\t"

tag = given | when | then

then = "(" "then" ")"

when = "(" "when" ")"

word = letter+}'