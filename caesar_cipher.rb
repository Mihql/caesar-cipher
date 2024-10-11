def split_string(string)
  result = string.chars
  return result
 end

# result = split_string('abc')
# puts"#{result}"

 def caesar_cipher(method_split_string, shift_key)
  result = method_split_string.map do |str| str.downcase
  if str.between?('a', 'z') || str.between?('A', 'Z')
    base = 'a'.ord
    # base = str.between?('a', 'z') ? 'a'.ord : 'A'.ord  # Handle both lowercase and uppercase letters
    ((str.ord - base + shift_key) % 26 + base).chr
  else
    str
  end
end

  result.join
end

# # Call caesar_cipher with a shifted key
# shifted_result = caesar_cipher(split_string('abc'), 1)
# puts shifted_result


class String
  def caesar_cipher(shift_key)
    result = self.chars.map do |str| str.downcase
    if str.between?('a', 'z') || str.between?('A', 'Z')
      base = 'a'.ord
      # base = str.between?('a', 'z') ? 'a'.ord : 'A'.ord  # Handle both lowercase and uppercase letters
      ((str.ord - base + shift_key) % 26 + base).chr
    else
      str
    end
  end
  result.join
  end
end

puts "What a string!".caesar_cipher(1)

