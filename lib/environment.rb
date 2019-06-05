require_relative "./horoscopes/version"

module HoroscopeReader
  class Error < StandardError; end
  # Your code goes here...
end

require_relative './horoscope'
require_relative './cli'
