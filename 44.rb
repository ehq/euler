# Problem 44

def pentagonal(n)
  n*(3*n-1)/2
end

def pentagonal?(n)
  result = (1 + Math.sqrt(1 + (24 * n)).to_f)/6.0
  result == result.ceil
end

result = []

for i in 1..10000
  for j in i..10000
    peni = pentagonal(i)
    penj = pentagonal(j)
    result << (peni - penj).abs if pentagonal?(peni + penj) && pentagonal?((peni - penj).abs)
  end
end

p result
