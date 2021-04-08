# Stock Picker

Stock Picker project from The Odin Project, [found here](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/caesar-cipher)

## Stock Picker Explanation

The goal of this project was to create a method that accepted an array of numbers representing stock values, and then to return the two element indexes that had the greatest difference between a former element value and subsequent element value as an array. The returned array would represent the best dates to buy and sell a stock for a maximum profit

## Project Guidelines

The project had the following guidelines:

- The method must accept an array of integers representing stock values
- You must 'buy' a stock before you can 'sell' it
- Calculate the greatest difference between buy and sell stock values
- The method must return an array of two integer index values, to represent the best stock buy and sell dates

## Design Decisions

Code formatting follows the [Ruby Style Guide](https://github.com/rubocop/ruby-style-guide) by rubocop.

I knew that I would need to loop through every integer in the stock array, and would need a nested loop through the integer values a second time in order to have a buy and sell value to calculate a difference for.

To save on processing time I started the nested loop from the current index of the outer array +1. This saves time by skipping calculations for values that would break the 'buy first, then sell' requirement. This also skips the first calculation of the outer array loop, which saves the program time because buying and selling on the same day will always return 0.
