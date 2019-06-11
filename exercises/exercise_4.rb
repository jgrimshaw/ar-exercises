require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Exercise 4: Loading a subset of stores

Store.create(:name => 'Surrey', :annual_revenue => 224000, :mens_apparel => false, :womens_apparel => true)
Store.create(:name => 'Whistler', :annual_revenue => 1900000, :mens_apparel => true, :womens_apparel => false)
Store.create(:name => 'Yaletown', :annual_revenue => 430000, :mens_apparel => true, :womens_apparel => true)

puts Store.all.count

# fetch (a collection of) only those stores that carry men's apparel.
# Assign the results to a variable @mens_stores.

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts store.name
  puts store.annual_revenue
end



@womens_stores = Store.where(womens_apparel: true)

@womens_stores.each do |store|
  puts store.name
  puts store.annual_revenue
end