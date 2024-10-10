# def caeser_chiper(string, shift_factor)
#   msg = string.chars.map do |char|  
#     if char.between?('A','Z') || char.between?('a', 'z') # check if the charecter upcase or downcase
#       # base = char[0]
#       base = char.between?('A', 'Z') ? 'A'[0] : 'a'[0]  # Get ASCII base without ord
#       # ((char[0] - base + shift_factor) % 26 + base).chr
#       ((char[0] - base + shift_factor) % 26 + base).chr
#       puts "#{char}"
#     else
#       puts ("type error")
#     end
#   end
# end

def caesar_cipher(string, shift)
  result = string.chars.map do |char|
    if char.between?('A', 'Z') || char.between?('a', 'z')
      base = char.between?('A', 'Z') ? 65 : 97  # Use numeric base directly (65 for 'A', 97 for 'a')
      ((char[0].ord - base + shift) % 26 + base).chr
    else
      char  # Non-alphabetical characters remain unchanged
    end
  end

  result.join  # Join the array of characters back into a string
  puts "#{result}"
end


caesar_cipher("abc", 2)
