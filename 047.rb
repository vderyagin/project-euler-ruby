#!/usr/bin/env ruby

=begin

Problem 47
04 July 2003

The first two consecutive numbers to have two distinct prime factors are:

14 = 2 * 7
15 = 3 * 5

The first three consecutive numbers to have three distinct prime factors are:

644 = 2**2 * 7 * 23
645 = 3 * 5 * 43
646 = 2 * 17 * 19.

Find the first four consecutive integers to have four distinct primes
factors. What is the first of these numbers?

answer: 134043

=end

require 'mathn'

answer = (1..1e99).each_cons(4) do |cons|
  break cons.first if cons.all? { |n| n.prime_division.size == 4 }
end

puts answer
