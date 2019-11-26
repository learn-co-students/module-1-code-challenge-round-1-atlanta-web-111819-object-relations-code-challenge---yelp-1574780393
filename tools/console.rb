require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Robert", "Taylor")
customer2 = Customer.new("Kara", "Smith")
customer3 = Customer.new("Eric", "Haber")
customer4 = Customer.new("Robert", "Clark")

restaurant1 = Restaurant.new("Food Terminal")
restaurant2 = Restaurant.new("Taco Veloz")
restaurant3 = Restaurant.new("Top Golf")

Review.new(customer1, restaurant2, 5)
Review.new(customer2, restaurant1, 2)
Review.new(customer3, restaurant1, 3)
Review.new(customer2, restaurant2, 4)
Review.new(customer3, restaurant3, 5)
Review.new(customer3, restaurant2, 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line