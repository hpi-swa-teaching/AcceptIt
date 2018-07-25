as yet unclassified
serializedGrammar
^'AcceptitUserstoryGrammar <: BaseGrammar {

userstory = title linebreak+ role linebreak means linebreak purpose "."?

role = (space | tabstop)* ("As a " | "As an ") text

means = (space | tabstop)* ("I want " | "I want to ") text

purpose = (space | tabstop)* "In order to " text

title = (space | tabstop)* text

text = alnum+ (space | alnum)*

linebreak = "\n"

space := " "

tabstop = "\t"
}'