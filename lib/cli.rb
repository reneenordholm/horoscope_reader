class CLI

  def run #instance method
    #uses implicit self-- there is no variable telling the system to view self
    #(i.e. self.greeting), this is implied or implicit--
    #Ruby knows to call self.greeting.
    greeting #instance of the CLI class
    show_signs
    display_horoscope
    puts "\n\n"
  end

  def greeting
    puts "\nWelcome to horoscope reader!\nEnter your sign from the list below to read your horoscope.\n\n"
  end

  def show_signs
    horoscope_array = HoroscopeScraper.scrape_signs
    Horoscope.create_from_collection(horoscope_array)
  end

  def display_horoscope
    Horoscope.all.each { |horoscope| puts "#{horoscope.sign} | #{horoscope.date}" }
  end
end
