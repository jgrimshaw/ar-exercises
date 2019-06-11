require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
  # @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
  # @store1.employees.create(first_name: "Lili", last_name: "Smith", hourly_rate: 80)
  # @store1.employees.create(first_name: "James", last_name: "Smart", hourly_rate: 95)

  # @store2.employees.create(first_name: "Sarah", last_name: "Shellstad", hourly_rate: 40)
  # @store2.employees.create(first_name: "Tom", last_name: "Steele", hourly_rate: 50)
  # @store2.employees.create(first_name: "Husein", last_name: "Mass", hourly_rate: 65)

  @store2.employees.create(first_name: "Simon", last_name: "Guss", hourly_rate: 30)

  puts Employee.all