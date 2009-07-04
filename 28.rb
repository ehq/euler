# Problem 28

def spiral_sum(dimension)
  result = 1
  increment = 2
  n = 1
  until n >= dimension**2
    4.times do
      n += increment
      result += n
    end
    increment += 2
  end
  result
end

p spiral_sum 1001
