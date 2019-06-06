require_relative "./horoscopes/version"
require 'pry'
require 'open-uri' 

module HoroscopeReader
  class Error < StandardError; end
  # Your code goes here...
end

require_relative './horoscope'
require_relative './horoscope_scraper'
require_relative './cli'
