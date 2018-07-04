as yet unclassified
serializedGrammar
^ 'AcceptitLibraryGrammar <: BaseGrammar {

addParameter = space parameter

addWord = space word

anyText = any*

given = "(" "given" ")"

linebreak = "\n" | "\r" | "\f" | "\x0C" | "\x0D" | "\x0A" | "\u000A" | "\u000C" | "\u000D"

method = methodHead (linebreak methodBody)?

methodBody = anyText

methodHead = tag (addWord)+ (addParameter | addWord)*

parameter = ":" word

space := " "

tab = "\t"

tag = given | when | then

then = "(" "then" ")"

when = "(" "when" ")"

word = letter+}'