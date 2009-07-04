# Problem 5
# What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?

# There's no need for a script here. Any number can be decomposed into primes,
# so it's enough by multiplying all the primes that appear in 1..20 with their maximum exponent within that range.
p 2**4 * 3**2 * 5 * 7 * 11 * 13 * 17 * 19
