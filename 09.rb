# Problem 9
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

for c in 100..800
  for b in 100..800
    for a in 100..800
      if (a+b+c == 1000) && (a**2 + b**2 == c**2)
        p a*b*c
        break
      end
    end
  end
end

