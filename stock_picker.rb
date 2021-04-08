# PROJECT DETAILS
# Implement a method #stock_picker that takes in an array of stock prices, 
# one for each hypothetical day. It should return a pair of days representing the best 
# day to buy and the best day to sell. Days start at 0.


# PSEUDOCODE
# Pass array of integers into the method
# Loop through array
# Second loop through each value of the array
# Start second loop from current value. Do not include earlier values 
# Calculate difference from current value and each subsequent value
# If value is largest difference, store it for all subsequent comparisons
#   Store array element positions as well
# Return array element positions

def stock_picker(stock_values)
  best_profit = 0
  best_trade = [0, 0]

  stock_values.each_with_index do |worth, buy_index|
    sell_stock_values = stock_values[buy_index..]

    sell_stock_values.each_with_index do |sell_value, sell_index|
      if sell_value - worth > best_profit
        best_profit = sell_value - worth
        best_trade = [buy_index, sell_index + buy_index]
      end
    end
  end

  best_trade
end

stock_prices = [17,3,6,9,15,8,6,1,10]
puts stock_picker(stock_prices).inspect

