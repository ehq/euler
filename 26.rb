# Problem 26

def carmichael(n)
  m = 1
  until (10**m).modulo(n) == 1
    m += 1
  end
  m
end

p first_n_primes(168)[3..-1].collect {|p| [carmichael(p),p]}.sort.last
