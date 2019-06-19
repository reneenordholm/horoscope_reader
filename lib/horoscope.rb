class Horoscope

  attr_accessor :sign, :date, :horoscope_url, :read

  @@all = []

  def initialize(horoscope_data)
    horoscope_data.each { |attribute, value| self.send("#{attribute}=", value) }
    @@all << self
  end

  def self.create_from_collection(horoscope_data)
    horoscope_data.each { |horoscope| Horoscope.new(horoscope) }
  end

  def self.all
    @@all
  end
end
