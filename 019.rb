#!/usr/bin/env ruby

=begin

Problem 19
14 June 2002

You are given the following information, but you may prefer to do some
research for yourself.

* 1 Jan 1900 was a Monday.

* Thirty days has September,
  April, June and November.
  All the rest have thirty-one,
  Saving February alone,
  Which has twenty-eight, rain or shine.
  And on leap years, twenty-nine.

* A leap year occurs on any year evenly divisible by 4, but not on a century
  unless it is divisible by 400.

How many Sundays fell on the first of the month during the twentieth century
(1 Jan 1901 to 31 Dec 2000)?

answer: 171

=end

require 'date'

answer = (Date.parse('1901-01-01')...Date.parse('2001-01-01'))
  .inject(0) do |memo, d|
  memo += 1 if d.wday == 0 and d.mday == 1
  memo
end

puts answer
