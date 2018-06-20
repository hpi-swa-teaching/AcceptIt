as yet unclassified
serializedGrammar
^ 'AcceptitUserstoryGrammar <: BaseGrammar {

linebreak = "\n"

means = (space | tabstop)* ("I want " | "I want to ") text

purpose = (space | tabstop)* "In order to " text

role = (space | tabstop)* ("As a " | "As an ") text

space := " "

tabstop = "\t"

text = alnum+ (space | alnum)*

title = (space | tabstop)* text

userstory = title linebreak+ role linebreak means linebreak purpose "."?}'