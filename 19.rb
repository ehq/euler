# Problem 19
# How many months started on a sunday during the 20th century?

require 'activesupport'

before = Date.new(1901,1,1)
result = 0

until before.year == 2001
  result += 1 if before.wday == 0
  before += 1.month
end

p result
