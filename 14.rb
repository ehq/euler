# Problem 14

def collatz(n)
  return [] if n < 2
  n.modulo(2) == 0 ? [n] + collatz(n/2) : [n] + collatz(3*n + 1)
end

def collatz_size(n,sum)
  return sum if n < 2
  n.modulo(2) == 0 ? collatz_size(n/2, sum + 1) : collatz_size(3*n + 1, sum + 1)
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

