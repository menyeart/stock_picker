# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

# Quick Tips:

# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

# stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12


price_list = [17,3,6,9,15,8,6,1,10]
new_hash = Hash.new([])

price_list.each_with_index do |price, index1|
  price_list.each_with_index do |next_price, index2|
    if index2 > index1
      profit = price - next_price
      new_hash[profit] = [index1, index2]
    end
  end
end



p new_hash
p new_hash.keys.max

p new_hash.select {|key| key.to_i == new_hash.keys.max}



