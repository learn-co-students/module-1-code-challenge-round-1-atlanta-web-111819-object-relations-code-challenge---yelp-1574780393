class Customer

  @@all = []

  attr_accessor :given_name, :family_name

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurant_reviews
    Review.all.select do |restaurant_reviews|
      restaurant_reviews.customer == self
  end
end

# wont have time to finish this method below...this is where i stopped
def add_review(restaurant, star_rating)
  Review.new
end




end # end of class
