dial_book = {
    "taubate" => "012",
    "sao paulo" => "011",
    "fortaleza" => "085",
    "curitiba" => "044",
    "gramado" => "054",
    "amazonas" => "092",
    "rondonia" => "069"
  }
   
  def get_city_names(somehash)
    somehash.keys
  end
   
  def get_area_code(somehash, key)
    somehash[key]
  end
   
  loop do
    puts "Do you want to lookup an area code based on a city name?(Y/N)"
    answer = gets.chomp.downcase
    puts

    break if answer != "y"

    puts "Which city do you want the area code for?"
    puts get_city_names(dial_book)
    puts

    puts "Enter your selection"
    prompt = gets.chomp
    puts

    if dial_book.include?(prompt)
      puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
      puts
    else
      puts "You entered a city name not in the list!"
    end
  end