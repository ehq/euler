# Problem 50
# Which prime, below one-million, can be written as the sum of the most consecutive primes?

require 'euler'

time_for "fetching all the primes below 4000" do
  $primes = primes_below(4000)
end

size = $primes.size - 1
result = [0,0]

time_for "iterating over and over to find the max sums" do
  $primes.each_with_index do |prime,i|
    j = i + 1
    sum = prime
    while j < size
      sum += $primes[j]
      result = [j-i+1, sum] if sum < 1000000 and j-i+1 > result[0] and sum.prime?
      j += 1
    end
  end
end

p result
