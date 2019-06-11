require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
user_store = gets.chomp
begin
  Store.create!(:name => user_store, :annual_revenue => 500)
rescue ActiveRecord::RecordInvalid
  puts "error: all info is mandatory..."
end