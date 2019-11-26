class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer }.uniq
  end

  def average_star_rating
    total = reviews.reduce(0) {|total, review| total += review.rating}
    total / reviews.count
  end

end
