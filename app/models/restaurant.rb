class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select{|rv| rv.restaurant == self}.flatten
  end

  def customers
    Review.all.select{|rv| rv.restaurant == self}.flatten.map{|rv| rv.customer}
  end

  def average_star_rating
    rates = self.reviews.map{|rv| rv.rating}.flatten
    # binding.pry
    (rates.sum)/rates.length
  end


end
