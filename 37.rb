# Problem 37

require 'euler.rb'

def truncatable_prime?(p)
  prime = p.to_s
  prime.size.times do |i|
    return false unless prime[i..-1].to_i.prime? && prime[0..-1 - i].to_i.prime?
  end
  true
end

res = (10..800000).inject([]) {|primes, p| truncatable_prime?(p) ? primes << p : primes}
p res
p res.uniq.sum
