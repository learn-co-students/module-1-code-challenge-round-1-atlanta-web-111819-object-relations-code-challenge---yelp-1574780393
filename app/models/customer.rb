class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    Review.all.select{|rv| rv.customer == self}.flatten.map{|rv| rv.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    Review.all.select{|rv| rv.customer == self}.length
  end

  def self.find_by_name(name)
    temp = name.split(" ")
    # binding.pry
    @@all.select{|cus| cus.given_name == temp[0] && cus.family_name == temp[1]}.first
  end

  def self.find_all_by_given_name(name)
    @@all.select{|cus| cus.given_name == name}
  end

end
