# Problem 41
# What is the largest prime pandigital?

require 'euler.rb'

primes =  [1,2,3,4,5,6,7].permutation.to_a

p primes.inject([]) {|max,n| n.join.to_i.prime? ? max << n.join : max}.last
