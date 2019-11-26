require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

varsity = Restaurant.new('The Varsity')
chipotle = Restaurant.new('Chipotle')
panera = Restaurant.new('Panera Bread')

henry_v = Customer.new('Henry', 'the V')
macbeth = Customer.new('William', 'Macbeth')
hamlet = Customer.new('George', 'Hamlet')
romeo = Customer.new('Romeo', 'Montague')
juliet = Customer.new('Juliet', 'Capulet')

romeo.add_review(chipotle, 5)
juliet.add_review(chipotle, 5)
macbeth.add_review(panera, 3)
hamlet.add_review(chipotle, 3)
henry_v.add_review(chipotle, 3)
macbeth.add_review(varsity, 4)
romeo.add_review(varsity, 3)
henry_v.add_review(varsity, 5)
henry_v.add_review(chipotle, 1)
henry_v.add_review(chipotle, 1)
romeo.add_review(chipotle, 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line