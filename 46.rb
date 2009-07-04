# Problem 46
# What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?

require "euler.rb"

def sum_of_a_prime_and_twice_as_square_within(range)
  res = (primes_within(1..(range.max/2)).product(double_squares_within(range))).map {|comb| comb[0] + comb[1]}.delete_if {|i| i.even?}.uniq
end

def double_squares_within(range)
  range.map {|i| 2 * i**2}
end

def odd_composites_within(range)
  range.to_a.delete_if {|i| i.even? || i.prime?}
end

odds = odd_composites_within(9..10000)
sums = sum_of_a_prime_and_twice_as_square_within(1..10000)
p  (odds - sums).first
