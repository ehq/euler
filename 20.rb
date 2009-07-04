# Problem 20
# Find the sum of digits in 100!

require 'euler.rb'

p 100.fact.to_s.split('').collect! {|num| num.to_i}.sum
