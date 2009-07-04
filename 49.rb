# Problem 49
require 'euler.rb'

def permutations_of(n, numbers)
  n.to_s.split("").permutation.to_a.map {|num| num.join.to_i} & numbers
end

def sequence
  primes = primes_within(999..9999)
  permutations = []
  primes.each do |p|
    fetch_primes =  permutations_of(p,primes)
    permutations << fetch_primes
    primes -= fetch_primes
  end
  permutations.delete_if {|p| p.size < 3}

  result = []
  permutations.map! {|p| p.sort.reverse}
  permutations.each do |perm|
    perm.permutation(3) do |pe|
      result << pe if pe[0] - pe[1] == pe[1] - pe[2]
    end
  end
  result
end

p sequence
