dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# def substrings_bk(string, dictionary)
#   # Initialie an empty hash to store the counts of found substring
#   result = Hash.new(0)

#   # Normalize the input word to lowercase for case-sensitive comparision
#   normalised_word = string.downcase

#   # Iterate each substring through dictionary
#   dictionary.each do |substring|
#     # Normalise the substring to lowercase for case-sensitive comparision 
#     normalised_substring = substring.downcase
    
#     # count the occurance of substring in string
#     count = normalised_word.scan(/#{Regexp.escape(normalised_substring)}/).size

#     # If found, add it to the result hash with its count
#     result[normalised_substring] += count if count > 0 
#   end

# result
# end

# word = "below down how howdy below"

# puts substrings(word, dictionary)

class String
  def substrings(dictionary)
    # Initialie an empty hash to store the counts of found substring
    result = Hash.new(0)
  
    # Normalize the input word to lowercase for case-sensitive comparision
    normalised_word = self.downcase
  
    # Iterate each substring through dictionary
    dictionary.each do |substring|
      # Normalise the substring to lowercase for case-sensitive comparision 
      normalised_substring = substring.downcase
      
      # count the occurance of substring in string
      count = normalised_word.scan(/#{Regexp.escape(normalised_substring)}/).size
  
      # If found, add it to the result hash with its count
      result[normalised_substring] += count if count > 0 
    end
  
  result
  end
end

puts "Below below down going how Howdy".substrings(dictionary)
