class API

  def self.fetch_classes
    #binding.pry
    url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"
    #binding.pry
    uri = URI(url)
    binding.pry
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
  end


end
