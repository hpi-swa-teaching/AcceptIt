as yet unclassified
serializedGrammar
^ 'AcceptitScenarioGrammar <: BaseGrammar {

addWord = space alnum+

and = ''And''

andLinebreak = andRule linebreak

andRule = and lineRest

annotatedTreeScenario = name linebreak linebreak scenario

fullScenario = name linebreak linebreak scenario

given = ''Given''

givenRule = given lineRest

lineRest = addWord+

linebreak = ''\n''

linebreakAnd = linebreak andRule

name = alnum+ (alnum | space)*

scenario = givenRule linebreak andLinebreak? whenRule linebreak andLinebreak? thenRule linebreakAnd?

space := '' ''

tabstop = ''\t''

then = ''Then''

thenRule = then lineRest

treeScenario = name linebreak linebreak scenario

when = ''When''

whenRule = when lineRest}'