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
      ask_user_for_product_choice

      sleep(2)

      menu
    end

  end

  def display_products
    #binding.pry
    Makeup.all.each.with_index(1) do |products, index|
      puts "#{index}. #{products.name}"

    end


  end

  def ask_user_for_product_choice
    puts "Enter the number of the product you would like more information on."
    index = gets.strip.to_i - 1

    until index.between?(0, Makeup.all.length - 1)
      puts "Invalid choice, please choose the number of the product you wish to know more about."
      index = gets.strip.to_i - 1

    end
    product_instance = Makeup.all[index]
    display_product_details(product_instance)
    #binding.pry

  end

  def display_product_details(products)
    #binding.pry
    puts "Name: " + products.name
    puts "Price: " + products.price
    puts "\n"
    puts "Description: " + products.description
    puts "Rating: " + products.rating.to_s
    puts "Product Type: " + products.product_type

  end

end
