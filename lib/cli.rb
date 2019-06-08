class CLI

  def run #instance method
    #uses implicit self-- there is no variable telling the system to view self
    #(i.e. self.greeting), this is implied or implicit--
    #Ruby knows to call self.greeting.
    greeting #instance of the CLI class
    pull_signs
    display_signs
    puts "\n"
    loop do
      user_input = main_menu
      if user_input.include?("n") || user_input.include?("ex")
        puts "Goodbye"
        return
      else
        display_horoscope
      end
    end
  end

  def greeting
    puts "\nWelcome to horoscope reader!\nEnter your sign from the list below to read your horoscope.\n\n"
  end

  def pull_signs
    horoscope_array = HoroscopeScraper.scrape_signs
    Horoscope.create_from_collection(horoscope_array)
  end

  def display_signs
    Horoscope.all.each { |horoscope| puts "#{horoscope.sign} | #{horoscope.date}" }
  end

  def main_menu
    puts "What's your sign?"
    input = gets.strip.downcase
    return input
  end

  def display_horoscope(sign)
    puts "Your horoscope is:"
    return horoscope.horoscope_data(sign)
  end



end
