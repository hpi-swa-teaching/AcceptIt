as yet unclassified
serializedGrammar
^ 'AcceptitLibraryGrammar <: BaseGrammar {

method = methodHead (linebreak methodBody)?

methodHead = tag (addWord)+ (addParameter | addWord)*

methodBody = anyText

linebreak = "\n" | "\r" | "\f" | "\x0C" | "\x0D" | "\x0A" | "\u000A" | "\u000C" | "\u000D"

tag = given | when | then

addParameter = space parameter

addWord = space word

parameter = ":" word

given = "(" + "given" + ")"

then = "(" + "then" +")"

when = "(" + "when" +")"

word = letter+

space := " "

tab = "\t"

anyText = any* }'