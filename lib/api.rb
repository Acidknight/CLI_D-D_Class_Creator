class API

  def self.fetch_classes
    #binding.pry
    url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"
    #binding.pry
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)

    array_of_products = hash

    array_of_products.each do |product_hash|
      #binding.pry
      makeup = Makeup.new
      makeup.name = product_hash["name"]
      makeup.price = product_hash["price"]
      makeup.description = product_hash["description"]
      makeup.rating = product_hash["rating"]
      makeup.product_type = product_hash["product_type"]

    end
    binding.pry 
  end



end
