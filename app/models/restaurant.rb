class Restaurant

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def restaurant_reviews
    Review.all.select do |restaurant_reviews|
      restaurant_reviews.restaurant == self
  end
end

def customers
  restaurant_reviews.map.uniq {|restaurant_reviews| restaurant_reviews.customer}
end


end
