def stock_picker(price_list)
  profit_with_days = Hash.new([])
  price_list.each_with_index do |price, index1|
    price_list.each_with_index do |next_price, index2|
      if index2 > index1
        profit = next_price - price
        profit_with_days[profit] = [index1, index2]
      end
    end
  end

  profit_with_days.select {|key| key.to_i == profit_with_days.keys.max}
  
end




