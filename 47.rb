# Problem 47
# Find the first four consecutive integers to have four distinct primes factors. What is the first of these numbers?

require 'euler.rb'

numbers = []
time_for do
  n = 99990
  while n < 200000
    numbers << factorize(n)
    n += 1
  end
end

time_for do
  result = 0
  i = 0
  while i < numbers.size - 4
    # if (i..i+3).inject([]) {|sum, j| sum + numbers[j]}.uniq.size == 16
    if (i..i+3).all? {|j| numbers[j].uniq.size == 4}
      result = i + 99990
      break
    end
    i += 1
  end
  p result
end
