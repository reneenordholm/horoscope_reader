require_relative "./horoscopes/version"
require 'pry'
require 'open-uri'
require 'nokogiri'

module HoroscopeReader
  class Error < StandardError; end
end

require_relative './horoscope'
require_relative './horoscope_scraper'
require_relative './cli'
