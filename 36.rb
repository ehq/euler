# Problem 36

require 'euler.rb'

p (1..999999).inject {|sum, n| n.palindrome? && bin(n).palindrome? ? sum + n : sum}

