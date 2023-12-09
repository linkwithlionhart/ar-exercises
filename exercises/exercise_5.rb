require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

=begin
Exercise 5: Calculations
  Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
  On the next line, also output the average annual revenue for all stores.
  Output the number of stores that are generating $1M or more in annual sales. 
  Hint: Chain together where and size (or count) Active Record methods.
=end

total_revenue = Store.sum(:annual_revenue)
puts "Total revenue from all stores is $#{total_revenue}."

average_annual_revenue = Store.average(:annual_revenue)
puts "Average revenue from all stores is $#{average_annual_revenue}."

more_than_1M_annual_revenue = Store.where("annual_revenue >= ?", 1000000).count
puts "Number of stores that generate $1M or more in revenue is #{more_than_1M_annual_revenue}."

