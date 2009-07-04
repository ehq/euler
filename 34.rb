require 'euler.rb'

result = []
3.upto 100000 do |n|
  result << n if n.to_s.split('').map {|i| i.to_i}.inject(0) {|sum, num| num.fact + sum} == n
end
p result.sum
