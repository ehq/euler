# Problem 1
# Find the sum of all numbers that are multiples of 3 or 5, bellow 1000.

require 'euler.rb'

(1..999).inject do |sum, n|
  n.divisible_by(3) || n.divisible_by(5) ? sum + n : sum
end
