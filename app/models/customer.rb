class Customer
  attr_accessor :given_name, :family_name, :review
  @@all = []

  def initialize(given_name, family_name, review)
    @given_name = given_name
    @family_name  = family_name
    @review = review
    @@all << self 
  end
  def self.all
    @@all
  end
  def customer
     self.customer do |cust1| customer
  end

  def full_name
    "#{given_name} #{family_name}" 
  end
end