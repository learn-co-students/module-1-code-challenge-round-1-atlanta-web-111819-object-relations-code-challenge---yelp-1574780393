class Review
    attr_reader :customer, :resturant
    attr_accessor :rating
    @@all = []

    def initialize (customer, restaurant, rating)
        @customer = customer
        @resturant = restaurant
        @rating = 10
        @@all << self
    end
    def self.all
        @@all
    end
end