class HoroscopeScraper

  BASE_URL = "https://www.horoscope.com/us/index.aspx"

  def self.scrape_signs
    pg = open(BASE_URL)
    parsed_html = Nokogiri::HTML(pg)
    signs = []
      parsed_html.css("div.grid.grid-6 a").each do |each_sign|
        sign = each_sign.css("h3").text
        date = each_sign.css("p").text
        signs << {sign: sign, date: date}
      end
    signs
  end

end
