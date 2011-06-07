#!/usr/bin/env ruby

=begin

Problem 21
05 July 2002

Let d(n) be defined as the sum of proper divisors of n (numbers less than n
which divide evenly into n).  If d(a) = b and d(b) = a, where a != b, then a
and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55
and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71
and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.

answer: 31626

=end

class Integer

  def divisors_sum
    (1..self.div(2)).inject(0) do |memo, n|
      memo += n if (self % n).zero?
      memo
    end
  end

end

MAX = 10_000

answer = (1...MAX).each_with_object([]) do |n, ary|
  next if ary.include?(n) or (d = n.divisors_sum) >= MAX or n == d
  ary << n << d if d.divisors_sum == n
end.inject :+

puts answer
