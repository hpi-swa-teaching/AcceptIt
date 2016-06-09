as yet unclassified
serializedGrammar
^ 'AcceptitUserstoryGrammar <: BaseGrammar {

linebreak = ''\n''

means = ''I want '' text

purpose = ''In order to '' text

role = (''As a '' | ''As an '') text

space := '' ''

text = alnum+ (space | alnum)*

title = upper+ (space | alnum)*

userstory = title linebreak purpose linebreak role linebreak means}'