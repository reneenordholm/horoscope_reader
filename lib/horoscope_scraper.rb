class HoroscopeScraper

  BASE_URL = "https://www.horoscope.com"

  def self.scrape_signs
    parsed_html = Nokogiri::HTML(open(BASE_URL))
    horoscope_data = []
      parsed_html.css("div.grid.grid-6 a").each do |each_sign|
        sign = each_sign.css("h3").text
        date = each_sign.css("p").text
        horoscope_url = "#{BASE_URL + each_sign.attr("href")}"
        horoscope_data << {
          sign: sign,
          date: date,
          horoscope_url: horoscope_url
        }
      end
    horoscope_data
  end

  def self.scrape_horoscopes(sign)
    doc = Nokogiri::HTML(open(sign.horoscope_url))
    read = doc.css("main.main-horoscope.grid-single-m p").map(&:text)[0]
    sign.read = read
  end

end
