#!/usr/bin/env ruby

=begin

Problem 35
17 January 2003

The number, 197, is called a circular prime because all rotations of the
digits: 197, 971, and 719, are themselves prime.

There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71,
73, 79, and 97.

How many circular primes are there below one million?

answer: 55

=end

require 'mathn'

class Integer

  def rotate
    self.to_s.chars.to_a.rotate.join.to_i
  end

  def rotations
    a = self
    rot = []
    rot << (a = a.rotate) until rot.size == self.to_s.length
    rot
  end

end

answer = Prime
  .take_while { |p| p < 1e6 }
  .count { |p| p.to_s !~ /0/ and p.rotations.all? &:prime? }

puts answer
