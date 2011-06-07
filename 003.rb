#!/usr/bin/env ruby

=begin

Problem 3
02 November 2001

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

answer: 6857

=end

require 'mathn'

NUM = 600_851_475_143

answer = NUM.prime_division.last.first

puts answer
