#!/usr/bin/env ruby

=begin

Problem 4
16 November 2001

A palindromic number reads the same both ways. The largest palindrome made
from the product of two 2-digit numbers is 9009 = 91 x 99.

Find the largest palindrome made from the product of two 3-digit numbers.

answer: 906609

=end

class Integer
  def palindrome?
    str = to_s
    str == str.reverse
  end
end


answer = (100..999).to_a.repeated_combination(2).with_object([]) do |numbers, palindromes|
  product = numbers.inject :*
  palindromes << product if product.palindrome?
end.max

puts answer
