class CLI

  def run
    greeting
    pull_signs
    display_signs
    main_menu
  end

  def greeting
    puts "\nWelcome to horoscope reader!\n\n"
  end

  def pull_signs
    horoscope_data = HoroscopeScraper.scrape_signs
    Horoscope.create_from_collection(horoscope_data)
  end

  def display_signs
    Horoscope.all.each.with_index { |h, i| puts "#{i + 1}. #{h.sign} | #{h.date}"}
  end

  def main_menu
    puts "\nEnter the number associated with your sign to read today's horoscope."
    index = gets.strip.to_i - 1
      if index >= 0 && index <= 11
        sign = Horoscope.all[index]
        if Horoscope.all.include?(sign.read)
          puts "\nYour horoscope for #{sign.read}\n\n"
        else
          HoroscopeScraper.scrape_horoscopes(sign)
          puts "\nYour horoscope for #{sign.read}\n\n"
        choose_another?
        end
      else
        puts "Please enter a number between 1-12."
        main_menu
      end
  end

  def choose_another?
    puts "Would you like to view another horoscope?\nEnter Y to return to main menu, or N to exit."
    input = gets.strip.downcase
    if input == "y"
      display_signs
      main_menu
    elsif input == "n"
      puts "Goodbye"
      return
    else
      puts "\nI did not understand your entry."
      choose_another?
    end
  end

end
