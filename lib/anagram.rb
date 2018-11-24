require "pry"

class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    array.each_with_object([]) do |check, anagrams|
      anagrams << check if word.split("").sort.join == check.split("").sort.join
    end
  end

end

# a = Anagram.new("listen")

# Pry.start
