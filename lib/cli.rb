class CLI

  def start
    #binding.pry
    puts "Welcome!"
    API.fetch_classes
  end

end
