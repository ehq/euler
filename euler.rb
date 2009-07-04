# Auxiliary methods for solving the problems

class Integer
  def prime?
    return false if self < 2
    2.upto Math.sqrt(self).to_i do |i|
      return false if modulo(i) == 0
    end
    true
  end

  def decompose
    divisors = []
    2.upto(self/2) do |i|
      divisors << i if modulo(i) == 0
    end
    divisors
  end

  # Same as decompose.size, but faster.
  def number_of_divisors
    (1..Math.sqrt(self)).inject(0) {|sum, i| modulo(i) == 0 ? sum + 2 : sum}
  end

  def sum_of_divisors
    (1..(self/2)+1).inject {|sum, i| modulo(i) == 0 ? sum + i : sum}
  end

  def fact
    return 1 if self < 2
    self * pred.fact
  end

  def amicable?
    amicable = sum_of_divisors
    amicable != self && amicable.sum_of_divisors == self
  end

  def perfect?
    self == sum_of_divisors
  end

  def abundant?
    self < sum_of_divisors
  end

  def deficient?
    self > sum_of_divisors
  end

  def rotate_right
    to_s.split('').rotate_right.join.to_i
  end

  def palindrome?
    to_s == to_s.reverse
  end

  def pandigital?
    to_s.size == 9 && to_s.delete('0') == to_s
  end

  def divisible_by(n)
    modulo(n) == 0
  end

  def triangle?
    result = (Math.sqrt(1 + (8 * self)).to_f/2.0 - 0.5)
    result == result.ceil
  end

  def pentagonal?
    result = (1 + Math.sqrt(1 + (24 * self)).to_f)/6.0
    result == result.ceil
  end

  def hexagonal?
    result = (1 + Math.sqrt(1 + (8 * self)).to_f)/4.0
    result == result.ceil
  end
end

class Array
  def sum
    inject {|sum,elem| sum + elem}
  end

  def prod
    inject {|prod, elem| prod * elem}
  end

  def max
    inject {|max, elem| max > elem ? max : elem}
  end

  def min
    inject {|max, elem| max < elem ? max : elem}
  end

  def rotate_right
    unshift(pop)
  end
end

class String
  def alphabet_value
    sum = 0
    upcase.each_char {|c| sum += (eval("?#{c}") - 64)}
    sum.to_f
  end

  def triangle?
    result = (Math.sqrt(1 + (8 * alphabet_value)).to_f/2.0 - 0.5)
    result == result.ceil
  end
end

def first_n_primes(n)
  primes = [2]
  i = 3
  until primes.size == n
    primes << i if i.prime?
    i +=2
  end
  primes
end

def primes_below(n)
  primes = [2]
  i = 3
  while primes.last < n
    primes << i if i.prime?
    i +=2
  end
  primes[0..-2]
end

def primes_within(range)
  range.inject([]) {|primes, i| i.odd? && i.prime? ? primes << i : primes}
end

def fibonacci(n)
  i = 1
  j = 0
  1.upto n do
    t = i + j
    i = j
    j = t
  end
  j
end

def triangle_number(n)
  (n * (n+1))/2
end

# TODO remove this method since it's already defined as a Integer#fact
def fact(n)
  return 1 if n == 1
  n * fact(n-1)
end

def cuadratic(a,b,n)
  n**2 + a*n + b
end

def time_for(message)
  start = Time.now
  yield
  puts "#{message}: #{(Time.now - start).to_f}"
end

def bin(n)
  result = []
  while n > 0
    result << n.modulo(2)
    n /= 2
  end
  result.reverse.join.to_i
end

def pandigitals(range)
  range.to_a.permutation.to_a
end

def factorize n
  factorization = []
  p = 2
  i = 0
  until n == 1
    while n.modulo(p) == 0
      factorization << p
      n /= p
    end
    i += 1
    p = $primes[i]
  end
  factorization
end

def next_prime(n)
  i = n + (n.odd? ? 2 : 1)
  until i.prime?
    i += 2
  end
  i
end
