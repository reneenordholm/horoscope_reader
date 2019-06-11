class CLI

  def run #instance method
    #uses implicit self-- there is no variable telling the system to view self
    #(i.e. self.greeting), this is implied or implicit--
    #Ruby knows to call self.greeting.
    greeting #instance of the CLI class
    pull_signs
    display_signs
    main_menu
  end

  def greeting
    puts "\nWelcome to horoscope reader!\n\n"
  end

  def pull_signs
    horoscope_array = HoroscopeScraper.scrape_signs
    Horoscope.create_from_collection(horoscope_array)
  end

  def display_signs
    # Horoscope.all.each { |horoscope| puts "#{horoscope.sign} | #{horoscope.date}" }
    Horoscope.all.each.with_index { |h, i| puts "#{i +1}. #{h.sign} | #{h.date}"}
  end

  def main_menu
    puts "\nEnter the number associated with your sign to read today's horoscope."
    index = gets.strip.to_i - 1
      if index >= 0 && index <= 11
        sign = Horoscope.all[index]
        HoroscopeScraper.scrape_horoscopes(sign)
        display_horoscope(sign)
      else
        puts "Please enter a number between 1-12."
        main_menu
      end
  end

  def display_horoscope(sign)
    puts "\nYour horoscope for #{sign.horoscope_data}"
    choose_another?
  end

  def choose_another?
    puts "\n\nWould you like to view another horoscope?\nEnter Y to return to main menu, or N to exit."
    input = gets.strip.downcase
    if input == "y"
      display_signs
      main_menu
    else
      puts "Goodbye"
      return
    end
  end

end
