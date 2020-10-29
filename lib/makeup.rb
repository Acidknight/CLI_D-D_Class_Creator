class Makeup

  attr_accessor :name, :price, :description, :rating, :product_type

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end


end
