class HoroscopeScraper

  BASE_URL = "https://www.horoscope.com/us/index.aspx"

  def self.scrape_signs
    pg = open(BASE_URL)
    parsed_html = Nokogiri::HTML(pg)
    signs = []
    parsed_html.css("section.choose-zodiac.text-center").each do |table|
      table.css("div.grid.grid-6").each do |each_sign|
        # binding.pry
        sign = each_sign.css("h3").text
        binding.pry
        date = each_sign.css("p").text
        signs << {sign: sign, date: date}
      end
    end
    signs
    binding.pry
  end

end
