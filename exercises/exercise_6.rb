require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Connor", last_name: "Mackay", hourly_rate: 90)
@store1.employees.create(first_name: "Ronald", last_name: "Mcdonald", hourly_rate: 10)

@store2.employees.create(first_name: "Bobby", last_name: "K", hourly_rate: 60)
@store2.employees.create(first_name: "another?", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Impossible", last_name: "person", hourly_rate: 60)
@store2.employees.create(first_name: "say", last_name: "what?", hourly_rate: 60)

@store4.employees.create(first_name: "nobody", last_name: "knows", hourly_rate: 50)

@store4.employees.create(first_name: "this", last_name: "guy", hourly_rate: 60)



