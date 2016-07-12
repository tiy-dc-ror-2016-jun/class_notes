require "httparty"
require "pry"
# https://api.forecast.io/forecast/c841c27242dd50d1a1744bf123872c95/37.8267,-122.423
#
#

class Forecast
  include HTTParty
  base_uri "https://api.forecast.io"
  def initialize(key, lat, lng)
    @key = key
    @lng = lng
    @lat = lat
  end

  def forecast
    self.class.get("/forecast/#{@key}/#{@lat},#{@lng}")
  end
end
