# Problem 32

result = []
for a in 1..10000
  for b in a..10000
    combination = "#{a}#{b}#{a*b}"
    result << (a*b) if combination.size == 9 && combination.split('').sort == ['1','2','3','4','5','6','7','8','9']
  end
end
p result.uniq.sum
