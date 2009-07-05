# Tests for all the auxiliary methods

require 'euler.rb'
require 'rubygems'
require 'contest'

class EulerTest < Test::Unit::TestCase
  context "Integer" do
    should "return if it's prime or not when sent prime?" do
      assert 2.prime?
      assert 3.prime?
      assert !1.prime?
      assert !4.prime?
    end

    should "return a list of it's divisors when sent decompose" do
      assert_equal 24.decompose, [2, 3, 4, 6, 8, 12]
    end

    should "return the number of it's divisors, including 1 and itself, when sent number_of_divisors" do
      assert_equal 24.number_of_divisors, 8
    end

    should "return the sum of it's divisors when sent sum_of_divisors" do
      assert_equal 24.sum_of_divisors, 36
    end

    should "return the factorial value" do
      assert_equal 24, 4.fact
    end

    should "return if the number is amicable when sent amicable?" do
      assert !24.amicable?
      assert 220.amicable?
    end

    should "return if the number is perfect when sent perfect?" do
      assert 6.perfect?
      assert !5.perfect?
    end

    should "return if the number is abundant when sent abundant?" do
      assert 12.abundant?
      assert !6.abundant?
    end

    should "return if the number is deficient when sent deficient?" do
      assert 13.deficient?
      assert !12.deficient?
    end

    should "return if the number is a palindrome when sent palindrome?" do
      assert 23344544332.palindrome?
      assert !234.palindrome?
    end

    should "return if the number is 9-pandigital when sent pandigital?" do
      assert 129348576.pandigital?
      assert !12345478.pandigital?
    end
  end

  context "Array" do
    should "respond to sum" do
      assert_equal 21, [1, 2, 3, 4 ,5, 6].sum
    end

    should "respond to product" do
      assert_equal 20, [1, 2, 5, 2].prod
      assert_equal 0, [1, 2, 4, 56, 8, 0].prod
      assert_equal 1, [1, 1].prod
    end

    should "rotate the elements to the right when sent rotate_right" do
      assert_equal [6, 1, 2, 3, 4, 5], [1, 2, 3, 4, 5, 6].rotate_right
    end
  end

  context "Fibonacci sequence" do
    should "follow the right pattern" do
      assert_equal 5, fibonacci(5)
      assert_equal 8, fibonacci(6)
      assert_equal 13, fibonacci(7)
    end
  end

end

