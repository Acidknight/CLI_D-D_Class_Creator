class CLI

  def start
    #binding.pry
    puts "Welcome!"
    API.fetch_products
    self.menu
  end

  def menu
    puts "Would you like to see the list of Maybelline products?"
    puts "\n"
    puts "Type 'yes' or 'y' to continue, or type anything else to exit."

    user_input = gets.strip.downcase

    if user_input == "yes" || user_input == "y"
      puts "Confirmed, the products will come up shortly."
      puts "\n"
      display_products
    end

  end

  def display_products
    #binding.pry
    Makeup.all.each do |products|
      puts products.name

    end


  end

end
