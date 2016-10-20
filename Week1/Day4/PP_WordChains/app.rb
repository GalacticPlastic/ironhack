require 'ruby-dictionary'
require_relative("lib/wordchains.rb")

dictionary = Dictionary.from_file("/usr/share/dict/words")

chain1 = WordChain.new(dictionary)
chain1.find_chain("cat", "pig")
puts ""
chain2 = WordChain.new(dictionary)
chain2.find_chain("cat", "dog")
puts ""
chain3 = WordChain.new(dictionary)
chain3.find_chain("joke", "pill")
puts ""
chain4 = WordChain.new(dictionary)
chain4.find_chain("fish", "duck")
puts ""


# @dictionary.exists?