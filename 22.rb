# Problem 22

names = File.read("names.txt").delete("\"").delete(' ').split(',').sort

def sum_ascii(word)
  sum = 0
  word.each_char {|c| sum += eval("?#{c}")-64}
  sum
end

def score(name, position)
  sum_ascii(name) * position
end

result = 0
names.each_with_index {|name, i| result += score(name, i+1)}
p result
