#!/usr/bin/env ruby

=begin

Problem 6
14 December 2001

The sum of the squares of the first ten natural numbers is,
1**2 + 2**2 + ... + 10**2 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)**2 = 55**2 = 3025

Hence the difference between the sum of the squares of the first ten natural
numbers and the square of the sum is 3025 - 385 = 2640.

Find the difference between the sum of the squares of the first one hundred
natural numbers and the square of the sum.

answer: 25164150

=end


sum_of_squares = (1..100)
  .map { |n| n**2 }
  .inject :+

square_of_sum = ((1..100).inject :+) ** 2

answer = square_of_sum - sum_of_squares

puts answer
