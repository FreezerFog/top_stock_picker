def stock_picker(stock_values)
  stock_values.each {|worth| puts worth}
end

stock_prices = [17,3,6,9,15,8,6,1,10]
stock_picker(stock_prices)