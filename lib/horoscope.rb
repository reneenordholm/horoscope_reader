class Horoscope

  attr_accessor :sign, :date

  @@all = []

  def initialize(horoscope_hash)
    horoscope_hash.each { |attribute, value| self.send("#{attribute}=", value) }
    @@all << self
  end

  def self.create_from_collection(horoscope_array)
    horoscope_array.each { |horoscope| Horoscope.new(horoscope) }
  end

  def add_horoscope_attributes(attributes_hash)
    attributes_hash.each { |key, value| self.send("#{key}=", value) }
  end

  def self.all
    @@all
  end

end
