# Problem 14
# Take this collatz sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?

def collatz(n)
  return [] if n < 2
  n.modulo(2) == 0 ? [n] + collatz(n/2) : [n] + collatz(3*n + 1)
end

def collatz_size(n,sum)
  return sum if n < 2
  n.even? ? collatz_size(n/2, sum + 1) : collatz_size(3*n + 1, sum + 1)
end

index = 0
result = 0
1.upto 1000000 do |i|
  aux = collatz_size(i,0)
  if result < aux
    result = aux
    index = i
  end
end

p result
p index

