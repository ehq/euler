# Problem 35

require 'euler.rb'

def circular?(n)
  return false unless n.prime?
  rotation = n.rotate_right
  until n == rotation
    return false unless rotation.prime?
    rotation = rotation.rotate_right
  end
  true
end

def primes_circulars_below(n)
  primes = primes_below(n)
  primes.inject([]) do |circulars, p|
    circular?(p) ? circulars << p : circulars
  end
end

p primes_circulars_below(1000000).size
