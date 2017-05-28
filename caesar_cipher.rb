def caesar_cipher(str, shift)
  shifted_words = []
  words = str.split(' ')
  words.each do |word|
    shifted_words.push(shifter(word, shift) )
  end
  
  return shifted_words.join(' ')
end

def shifter(word, shift)
  shifted_word = []
  
  word.each_char do |char|
    if (char.ord > 64) && (char.ord < 123)
      uCase = isUpper?(char)
      
      char.downcase!
      
      shifted_char = char.ord + shift
      
      if shifted_char < 97
        shifted_char = 122 - (96 - shifted_char)
      elsif shifted_char > 122
        shifted_char = 97 + (shifted_char - 123)
      end
      
      char = shifted_char.chr
      
      if uCase
        char.capitalize!
      end
    end
    
    shifted_word.push(char)
  end
  
  shifted_word.join
end

def isUpper?(char)
  if char == char.capitalize
    true
  else
    false
  end
end

caesar_cipher("These nerds don't understand, do they? Tell 'em, Spider-man!", 4)