# Problem 45

require 'euler.rb'

def pentagonal(n)
  n*(3*n - 1)/2
end

def triangle(n)
  n*(n+1)/2
end

def hexagonal(n)
  n*(2*n - 1)
end

def triangles(range)
  range.map {|i| triangle(i)}
end

def pentagonals(range)
  range.map {|i| pentagonal(i)}
end

def hexagonals(range)
  range.map {|i| hexagonal(i)}
end

p((triangles(1..100000) & pentagonals(1..100000) & hexagonals(1..100000)).delete_if {|num| num < 40756})
