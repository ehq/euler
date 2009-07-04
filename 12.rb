# Problem 12
# What is the value of the first triangle number to have over five hundred divisors?

require 'euler.rb'

i = 1000
until triangle_number(i).sum_of_divisors >= 500
  i += 1
end

p triangle_number(i)

