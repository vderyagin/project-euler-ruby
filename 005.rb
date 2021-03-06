#!/usr/bin/env ruby

=begin

Problem 5
30 November 2001

2520 is the smallest number that can be divided by each of the numbers from 1
to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the
numbers from 1 to 20?

answer: 232792560

=end

answer = (1..20).inject :lcm

puts answer
