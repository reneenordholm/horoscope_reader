class CLI

  def run #instance method
    #uses implicit self-- there is no variable telling the system to view self
    #(i.e. self.greeting), this is implied or implicit--
    #Ruby knows to call self.greeting.
    greeting #instance of the CLI class
    HoroscopeScraper.scrape_signs
    show_signs
    # HoroscopeScraper.scrape_horoscopes
  end

  def greeting
    puts "\nWelcome to horoscope reader! Enter your sign from the list below to read your horoscope.\n\n"
  end

  def show_signs
    HoroscopeScraper.scrape_signs.each { |key, value| puts "#{key} | #{value}"}
  end
end
