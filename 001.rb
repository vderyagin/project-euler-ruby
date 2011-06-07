#!/usr/bin/env ruby

=begin

Problem 1
05 October 2001

If we list all the natural numbers below 10 that are multiples of 3 or 5, we
get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

answer: 233168

=end

answer =  (1...1000)
  .select { |n| [ n % 3, n % 5 ].any? &:zero? }
  .inject :+

puts answer
