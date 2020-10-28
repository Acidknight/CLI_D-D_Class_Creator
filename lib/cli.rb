class CLI

  def start
    #binding.pry
    puts "Welcome"
    API.fetch_classes
    self.menu
  end

  def menu
    puts "Would you like to see all available classes?"
    puts "Enter 'yes' to continue, or enter anything else to exit."

    user_input = gets.strip.downcase
  end

end
