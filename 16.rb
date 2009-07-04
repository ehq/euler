# Problem 16
# What is the sum of the digits of the number 2^(1000)?

require 'euler.rb'

p (2**1000).to_s.split('').collect! {|elem| elem.to_i}.sum

