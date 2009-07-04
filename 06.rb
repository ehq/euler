# Problem 6
# Find the difference between the sum of the squares of the first one hundred natural numbers
# and the square of the sum.

first_one_hundred_naturals = Array.new(100) {|i| i + 1}

class Array
  def sum_of_the_squares
    inject(0) {|sum, elem| sum + elem**2}
  end
end

# The sum of the first n naturals it's just n*(n+1)/2 since it's an arithmetic progression.
p (100*101/2)**2 - first_one_hundred_naturals.sum_of_the_squares
