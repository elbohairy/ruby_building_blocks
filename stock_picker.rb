# Seems like the most unnecessarily complicated solution.

# Main problem was ensuring that repeated prices don't mess up the output.
# Using the index or index_at methods on the array didn't work, so putting everything
# in a hash seemed like a good solution, since the lists of indices are unique.
# Surely there's a more elegant way.

=begin
Reading a few of the solutions, I see there's a much shorter, simpler one.

Use 2 for loops. The outer loop iterates through the numbers 0 to the last index of
the prices array. If the outer loop's iterating variable is i, let the inner loop iterate 
through the numbers i + 1 to the last index of the prices array. 

Doing it this way ensures that, as you access the prices array, the i index is always
before the i + 1 index. And hence you can determine the greatest difference withou 
saving the indices in a hash, as I've done.

=end

def pairing_off_days(prices)
  pairs_of_days = {}
  
  prices.each_index do |first_day|
    prices.each_index do |second_day| 
      if first_day < second_day
        pairs_of_days[ [first_day, second_day] ] = [prices[first_day], prices[second_day] ]
      
      end
    end
  end
  
  pairs_of_days
end

#x = pairing_off_days([17,3,6,9,15,8,6,1,10,15])

#x.each_key {|x| puts "#{x}" }


def stock_picker(prices)
  day_pairs = pairing_off_days(prices)
  
  
  largest_difference = 0
  best_day = []
  
  
  
  day_pairs.each do |indices, days|
    if days[1] - days[0] > largest_difference
      largest_difference = days[1] - days[0]
      best_day = [ indices[0], indices[1] ]

    end
  end
  
  best_day
end

p stock_picker([17,3,6,9,15,8,6,1,10])