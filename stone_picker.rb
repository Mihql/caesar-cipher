def stone_pickers(stone_price)
  # sort the array for comparison
  max_profit = 0
  best_day = []
  result_buy = stone_price.sort
  result_sell = stone_price.sort {|a, b| b <=> a}
  stone_price.each_with_index do |buy_price, buy_day|
    stone_price[buy_day+1...stone_price.length].each_with_index do |sell_price, offset|
      sell_day = offset + 1 + buy_day
      profit = sell_price - buy_price

      if profit > max_profit
        max_profit = profit
        best_day = [buy_day, sell_day]
      end
    end
  end

  best_day
end

stone_price = [3,20,30,9,15,8,6,1,10]
p stone_pickers(stone_price)