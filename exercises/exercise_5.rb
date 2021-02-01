require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "The sum of all revenues... #{Store.sum('annual_revenue')}"

puts "The average of all revenue...#{Store.average('annual_revenue')}"

@large_stores = Store.where("annual_revenue >= ?", [1000000])

puts "The number of stores with an annual revenue greater than $1 million iiis #{@large_stores.count}"

