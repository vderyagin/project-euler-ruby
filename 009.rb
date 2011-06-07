#!/usr/bin/env ruby

=begin

Problem 9
25 January 2002

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a**2 + b**2 = c**2

For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.  Find
the product abc.

answer: 31875000

=end

answer = (1...500).to_a.repeated_combination(2) do |a, b|
  c = 1000 - a - b
  a, b, c = [a, b, c].sort
  break (a * b * c) if a**2 + b**2 == c**2
end

puts answer
