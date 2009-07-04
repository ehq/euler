# Tests for all the auxiliary methods

require 'euler.rb'
require 'rubygems'
require 'contest'
require 'redgreen'
require 'rr'

class EulerTest < Test::Unit::TestCase
  context "Fibonacci sequence" do
    should "follow the right pattern" do
      assert_equal 5, fibonacci(5)
      assert_equal 8, fibonacci(6)
      assert_equal 13, fibonacci(7)
    end
    should "raise an exception when given bad arguments" do
      
    end
  end
end

