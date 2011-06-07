#!/usr/bin/env ruby

=begin

Problem 10
08 February 2002

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

answer: 142913828922

=end

require 'mathn'

answer = Prime
  .take_while { |n| n < 2e6 }
  .inject :+

puts answer
