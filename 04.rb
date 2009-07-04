# Problem 4
# Find the largest palindrome made from the product of two 3-digit numbers.

require 'euler.rb'

result = 1
900.upto 999 do |i|
  900.upto 999 do |j|
    product = i*j
    result = product if product > result && palindrome?(product)
  end
end
p result

