# Problem 23
# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

require 'euler.rb'

upper_limit = 28123

def abundants_below(n)
  abundants = []
  11.upto n do |i|
    abundants << i if i.abundant?
  end
  abundants
end

# The idea is to calculate the sum of every number below the upper limit (the triangle number),
# and then substract the numbers that actually can be written as the sum of two abundants.
abundants = abundants_below(upper_limit)
p triangle_number(upper_limit) - abundants.combination(2).to_a.uniq.each {|combination| combination.sum}.sum
