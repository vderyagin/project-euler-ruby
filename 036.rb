#!/usr/bin/env ruby

=begin

Problem 36
31 January 2003

The decimal number, 585 = 1001001001(2) (binary), is palindromic in both bases.

Find the sum of all numbers, less than one million, which are palindromic in
base 10 and base 2.

(Please note that the palindromic number, in either base, may not include
leading zeros.)

answer: 872187

=end

class Integer

  def palindrome?(base=10)
    s = to_s(base)
    s == s.reverse
  end

end

answer = (1...1e6).inject(0) do |memo, n|
  memo += n if n.palindrome? and n.palindrome?(2)
  memo
end

puts answer
