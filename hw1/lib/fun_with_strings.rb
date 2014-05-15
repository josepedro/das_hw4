module FunWithStrings
  def palindrome?
    words = self.gsub(/\W+/i, "")
    words.downcase!
    
    words == words.reverse
  end
  def count_words
    words = self.gsub(/[^a-z0-9\s]/i, "")
    words.downcase!
    words = words.split
    my_hash = Hash.new(0)
    words.each { |i| my_hash[i] += 1 }
    
    return my_hash
  end
  def anagram_groups
    
    words = self.gsub(/[^a-z0-9\s]/i, "").split
    words.group_by {|word| word.downcase.chars.sort}.values
    
  end
end
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
