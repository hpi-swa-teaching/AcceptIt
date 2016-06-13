as yet unclassified
serializedGrammar
^ 'AcceptitScenarioGrammar <: BaseGrammar {

and = ''And''

andLinebreak = andRule linebreak

andRule = and lineRest

annotatedTreeScenario = name linebreak+ scenario

fullScenario = name linebreak+ scenario

given = ''Given''

givenRule = given lineRest

lineRest = space (text | quotedText) lineRest*

linebreak = ''\n''

linebreakAnd = linebreak andRule

name = word (space word)*

quote = ''\''''

quotedText = quote (alnum | space | tabstop | linebreak | ''.'' | '','' | ''+'' | ''*'' | ''/'' | ''-'')* quote

scenario = givenRule linebreak andLinebreak? whenRule linebreak andLinebreak? thenRule linebreakAnd?

space := '' ''

tabstop = ''\t''

text = word (space word)*

then = ''Then''

thenRule = then lineRest

treeScenario = name linebreak+ scenario

when = ''When''

whenRule = when lineRest

word = alnum+}'