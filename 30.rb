# Problem 30

def sum_of_its_digits_to_the_n_power?(n,i)
  i.to_s.split('').map {|num| num.to_i**n}.sum == i
end

result = []
2.upto 1000000 do |i|
  result << i if sum_of_its_digits_to_the_n_power?(5,i)
end
p result.sum

