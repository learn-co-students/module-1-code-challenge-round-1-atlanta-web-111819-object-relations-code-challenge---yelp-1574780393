class Restaurant
  attr_reader :name, :customer, :review
  attr_accessor :rating
  @@all = []

  def initialize(name, customer, review, rating)
    @name = name
    @customer = customer
    @review = review
    @rating = rating
    @@all << self
  end
  def self.all
    @@all
  end
  def Restaurant
     self.restaurant do|rest| restaurant
  end
end
