#!/usr/bin/env ruby

=begin

Problem 62
30 January 2004

The cube, 41063625 (345**3), can be permuted to produce two other cubes:
56623104 (384**3) and 66430125 (405**3). In fact, 41063625 is the smallest
cube which has exactly three permutations of its digits which are also cube.

Find the smallest cube for which exactly five permutations of its digits are cube.

answer: 127035954683

=end

cubes_hashes = (0..1e4).map { |n| (n ** 3).to_s.chars.sort.hash }

answer = cubes_hashes.find_index { |n| cubes_hashes.count(n) == 5 } ** 3

puts answer
