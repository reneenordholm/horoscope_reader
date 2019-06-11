class HoroscopeScraper

  BASE_URL = "https://www.horoscope.com/us/index.aspx"

  def self.scrape_signs
    parsed_html = Nokogiri::HTML(open(BASE_URL))
    horoscope_hash = []
      parsed_html.css("div.grid.grid-6 a").each do |each_sign|
        sign = each_sign.css("h3").text
        date = each_sign.css("p").text
        horoscope_data = "#{each_sign.attr("href")}"
        horoscope_hash << {
          sign: sign,
          date: date,
          horoscope_data: horoscope_data
        }
      end
    horoscope_hash
  end

  def self.scrape_horoscopes(horoscope_data)
    doc = Nokogiri::HTML(open(horoscope_data))
    read = doc.css("main-horoscope grid-single-m").collect {|x| x.attribute("href").value}
    horoscope_data.horoscope_data = read
  end

end
