# Problem 39

def solutions_for(p)
  result = 0
  for a in 1..p/4
    for b in a..p-a
      result += 1 if (a**2 + b**2 == (p - a - b)**2)
    end
  end
  result
end

res = 0
aux = 0
200.upto 1000 do |i|
  solutions = solutions_for(i)
  if solutions > aux
    aux = solutions
    res = i
  end
end
p res
