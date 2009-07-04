# Problem 31

coins = [1,2,5,10,20,50,100,200]

solutions = Array.new(200, 0)

coins.each do |m|
   solutions[m-1] += 1
   m.upto(200-1) { |n|  solutions[n] += solutions[n - m] }
end

puts solutions[199]
