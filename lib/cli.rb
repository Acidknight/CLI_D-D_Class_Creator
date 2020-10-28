class CLI

  def start
    puts "Welcome"
    API.fetch_classes
    self.menu
  end

end
