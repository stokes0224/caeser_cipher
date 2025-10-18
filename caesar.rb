puts "What is your message?"
string = gets.chomp.chars
puts "What is your key?"
shift = gets.chomp.to_i

upper_case = ('A'..'Z') # (char - 65 + shift) % 26 + 65
lower_case = ('a'..'z') # (char - 97 + shift) % 26 + 97


def caesar_cipher(string, shift)
  result = []
  string.each do |char|
    if ('A'..'Z').include?(char)
      ascii_upper = char.ord
      shifted_upper = (ascii_upper - 65 + shift)%26+65
      new_char = shifted_upper.chr
      result << new_char
    elsif ('a'..'z').include?(char)
      ascii_lower = char.ord
      shifted_lower = (ascii_lower - 97 + shift)%26+97
      new_char = shifted_lower.chr
      result << new_char
    else
      result << char
    end
  end
  result.join
end




puts caesar_cipher(string, shift)