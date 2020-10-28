class API

  def fetch_classes
    url = "http://www.dnd5eapi.co/classes/"
    #binding.pry
    uri = URI(url)
    response = Net::HTTP.get(uri)
    #binding.pry
    hash = JSON.parse(response)
  end


end
