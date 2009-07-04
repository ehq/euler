# Problem 43

require 'euler.rb'

result = []
pandigitals(0..9).each do |pan|
  result << pan.join if pan[1..3].join.to_i.even? && pan[2..4].join.to_i.divisible_by(3) && pan[3..5].join.to_i.divisible_by(5) && pan[4..6].join.to_i.divisible_by(7) && pan[5..7].join.to_i.divisible_by(11) && pan[6..8].join.to_i.divisible_by(13) && pan[7..9].join.to_i.divisible_by(17)
end

p result
sum = 0
result.map {|i| sum += i.to_i}
p sum
