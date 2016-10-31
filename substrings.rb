# Much simpler solution than my stock picker one.

# Update: looking at another solution, I see that by creating a default value 
# for the hash, you can just increment without explicitly creating a value for
# the key.

# Hence, I can completely remove the select iterator. And the solution becomes
# even shorter!


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(phrase, dict)
  words = phrase.downcase.split(' ')
  
  substr_hash = Hash.new(0)
  
  dict.each do |a|
#    substr_hash[a] = 0
    
    words.each do |b|
      if b.include? a
        substr_hash[a] += 1
      end
    end
    
    
  end

# substr_hash = substr_hash.select do |k, v|
#   v > 0
# end

  
  substr_hash
end


p substrings("below", dictionary)
# {"below"=>1, "low"=>1}

p substrings("Howdy partner, sit down! How's it going?", dictionary)