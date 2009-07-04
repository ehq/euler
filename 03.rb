# Problem 3
# What is the largest prime factor of the number 600851475143 ?

require 'euler.rb'

composite = 600851475143

divisors = []
first_n_primes(10000).each do |prime|
  divisors << prime if composite.modulo(prime) == 0
end
p divisors.last

