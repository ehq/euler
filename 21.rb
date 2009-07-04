# Problem 21
# Evaluate the sum of all the amicable numbers under 10000.

require 'euler.rb'

p (0..10000).inject {|sum, n| n.amicable? ? sum + n : sum}
