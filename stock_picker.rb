def stock_picker(stock_values)
  best_profit = 0
  best_trade = [0, 0]

  stock_values.each_with_index do |cost, buy_index|
    stock_values[buy_index.next..].each_with_index do |sell_value, sell_index|
      profit = sell_value - cost
      if profit > best_profit
        best_profit = profit
        best_trade = [buy_index, sell_index + buy_index + 1]
      end
    end
  end

  best_trade
end

stock_picker([17,3,6,9,15,8,6,1,10])
