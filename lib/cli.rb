class CLI

  def start
    #binding.pry
    puts "Welcome!"
    API.fetch_products
  end

end
