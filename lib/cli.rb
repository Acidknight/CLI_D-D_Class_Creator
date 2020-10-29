class CLI

  def start
    #binding.pry
    puts "Welcome"
    API.fetch_classes
    uri = URI(url)
  end

end
