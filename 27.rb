# Problem 27

require 'euler.rb'

range = -999..999
result = Array.new(3,0)
some_primes = first_n_primes(500)

for a in range
  for b in range
    primes_within_range = 0
    for n in 0..79
      if some_primes.include?(cuadratic(a,b,n))
        primes_within_range += 1
      else
        break
      end
     result = [a,b,primes_within_range] if primes_within_range > result.last
    end
  end
end

p result

