# Problem 15
# How many routes are there through a 20×20 grid?

require 'euler.rb'

# Just 40!/20!20!
p 40.fact/(20.fact * 20.fact)
