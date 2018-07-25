as yet unclassified
serializedGrammar
^ 'AcceptitScenarioGrammar <: BaseGrammar {

treeScenario = name linebreak+ scenario

annotatedTreeScenario = name linebreak+ scenario

fullScenario = name linebreak+ scenario

name = word (space word)*

scenario = givenRule linebreak andLinebreak* whenRule linebreak andLinebreak* thenRule linebreakAnd*

givenRule = given lineRest

whenRule = when lineRest

thenRule = then lineRest

andRule = and lineRest

given = "Given"

when = "When"

then = "Then"

and = "And"

andLinebreak = andRule linebreak

linebreakAnd = linebreak andRule

lineRest = space (text | quotedText) lineRest*

linebreak = "\n"

quote = "\''"

quotedText = quote (alnum | space | tabstop | linebreak | "." | "," | "+" | "*" | "/" | "-")* quote

space := " "

tabstop = "\t"

text = word (space word)*

word = alnum+}'