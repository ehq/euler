# Problem 2
# Find the sum of all the even-valued terms in the Fibonacci sequence which do not exceed four million.

require 'euler.rb'

result = 0
n = 0
next_term = 0
while next_term < 4000000
  result += next_term if next_term.even?
  n += 1
  next_term = fibonacci(n)
end
puts result
