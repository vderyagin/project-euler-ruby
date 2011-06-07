#!/usr/bin/env ruby

=begin

Problem 52
12 September 2003

It can be seen that the number, 125874, and its double, 251748, contain
exactly the same digits, but in a different order.

Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x,
contain the same digits.

answer: 142857

=end

num = 1

answer = loop do
  break num if ((1..6).map { |i| (i*num).to_s.chars.sort }).uniq.size == 1
  num += 1
end

puts answer
