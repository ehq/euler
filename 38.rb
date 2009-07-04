# Problem 38

def product(n, top)
  (1..top).inject("") {|product, num| "#{product}#{(n * num)}"}
end

result = []
for i in 1..10000
  for j in 1..10000
    prod = product(i,j)
    prod_size = prod.size
    break if prod_size > 9
    result << prod if prod_size == 9 && prod.split('').sort == ['1','2','3','4','5','6','7','8','9']
  end
end

puts result.sort.last
