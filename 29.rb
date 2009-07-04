# Problem 29

def distinct_combinations(range)
  result = []
  for a in range
    for b in range
      result << a**b
    end
  end
  result.uniq.size
end

p distinct_combinations 1..9#2..100

