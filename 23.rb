# Problem 23

upper_limit = 28123

def abundants_below(n)
  abundants = [12]
  i = 13
  while i < n
    abundants << i if i.abundant?
    i += 1
  end
  abundants
end

def all_combinations_of(numbers)
  combinations = []
  top = numbers.size - 1
  for i in 0..top
    for j in i..top
      comb = numbers[i] + numbers[j]
      combinations << comb if comb < 28124
    end
  end
  combinations.uniq
end

ab = abundants_below(upper_limit)
p (upper_limit * (upper_limit+1)/2) - all_combinations_of(ab).sum
