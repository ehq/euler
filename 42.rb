# Problem 42
# How many triangle words are there on the file words.txt ?

require 'euler.rb'

words = File.read("words.txt").delete("\"").delete("\s").split(",")
p words.inject([]) {|triangles, word| word.triangle? ? triangles << word : triangles}.size
