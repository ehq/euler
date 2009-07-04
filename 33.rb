require 'rational'
require 'euler.rb'

def weird_rational?(p,q)
  return false if p.modulo(11) == 0 and q.modulo(11) == 0
  p1 = p/10
  p2 = p%10
  q1 = q/10
  q2 = q%10
  return false if q1 == 0 || q2 == 0
  weird_rationals = []
  weird_rationals << Rational(p1,q1) if p2 == q2
  weird_rationals << Rational(p1,q2) if p2 == q1
  weird_rationals << Rational(p2,q1) if p1 == q2
  weird_rationals << Rational(p2,q2) if p1 == q1
  weird_rationals.include? Rational(p,q)
end

weird_cancelling_numbers = []
99.downto 12 do |q|
  (q-1).downto 1 do |p|
    rational = Rational(p,q)
    weird_cancelling_numbers << Rational(p,q) if weird_rational?(p,q)
  end
end

p weird_cancelling_numbers
