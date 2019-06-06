class HoroscopeScraper

  BASE_URL = "https://www.horoscope.com/us/index.aspx"

  def self.scrape_signs
    pg = open(BASE_URL)
    binding.pry
  end

end
