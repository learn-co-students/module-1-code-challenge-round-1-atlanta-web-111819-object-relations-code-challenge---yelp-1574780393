require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



customer1 = Customer.new("George", "Washington")
customer2 = Customer.new("Donald", "Trump")
customer3 = Customer.new("Teddy", "Roosevelt")

rest1 = Restaurant.new("Chipotle")
rest2 = Restaurant.new("Moe's")
rest3 = Restaurant.new("Taco Bell")

review1 = Review.new(customer1, rest2, 8)
review2 = Review.new(customer3, rest2, 9)
review3 = Review.new(customer2, rest3, 3)


binding.pry
puts "Yelp"

binding.pry
0 #leave this here to ensure binding.pry isn't the last line