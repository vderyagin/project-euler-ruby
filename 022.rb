#!/usr/bin/env ruby

=begin

Problem 22
19 July 2002

Using names.txt (right click and 'Save Link/Target As...'), a 46K text file
containing over five-thousand first names, begin by sorting it into
alphabetical order. Then working out the alphabetical value for each name,
multiply this value by its alphabetical position in the list to obtain a name
score.

For example, when the list is sorted into alphabetical order, COLIN, which is
worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN
would obtain a score of 938 * 53 = 49714.

What is the total of all the name scores in the file?

answer: 871198282

=end

INPUT = File.join(File.dirname(File.absolute_path(__FILE__)), 'assets/022 - names.txt')

answer = IO.read(INPUT)
  .scan(/\w+/)
  .sort
  .each_with_index
  .inject(0) do |memo, args|
  word, index = args
  word_score = word.chars.inject(0) do |m, char|
    m += (char.ord) - ('A'.ord) + 1
  end
  memo += word_score  * (index + 1)
end

puts answer
