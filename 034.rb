#!/usr/bin/env ruby

=begin

Problem 34
03 January 2003

145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

Find the sum of all numbers which are equal to the sum of the factorial of
their digits.

Note: as 1! = 1 and 2! = 2 are not sums they are not included.

answer: 40730

=end

class Integer

  FACTORIALS = (1..9).each_with_object([1]) do |n, ary|
    ary[n] = (1..n).inject(:*)
  end

  def factorial
    FACTORIALS[self]
  end

  def digits_fac_sum
    to_s
      .chars
      .map { |d| d.to_i.factorial }
      .inject :+
  end

end

answer = (10..(9.factorial * 7))
  .select { |n| n == n.digits_fac_sum }
  .inject :+

puts answer
