class HoroscopeScraper

  BASE_URL = "https://www.horoscope.com"

  def self.scrape_signs
    puts "scraping first level"
    parsed_html = Nokogiri::HTML(open(BASE_URL))
    horoscope_hash = []
      parsed_html.css("div.grid.grid-6 a").each do |each_sign|
        sign = each_sign.css("h3").text
        date = each_sign.css("p").text
        horoscope_data = "#{BASE_URL + each_sign.attr("href")}"
        horoscope_hash << {
          sign: sign,
          date: date,
          horoscope_data: horoscope_data
        }
      end
    horoscope_hash
  end

  def self.scrape_horoscopes(sign)
    puts "scraping #{sign}"
    doc = Nokogiri::HTML(open(sign.horoscope_data))
    read = doc.css("main.main-horoscope.grid-single-m p").map(&:text)[0]
    sign.read = read
  end

end
