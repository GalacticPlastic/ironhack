require_relative("lib/lexicon.rb")
new_lex = Lexiconomitron.new
p new_lex.eat_t("great scott!") == "grea sco!"
p new_lex.shazam(["This","is","a","boring","test"]) == ["sih","si","a","gnirob","se"]