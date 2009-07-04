# Problem 26
# Find the value of d < 1000 for which 1/d contains the longest recurring cycle.

def carmichael(n)
  m = 1
  until (10**m).modulo(n) == 1
    m += 1
  end
  m
end

p first_n_primes(168)[3..-1].collect {|p| [carmichael(p),p]}.sort.last
