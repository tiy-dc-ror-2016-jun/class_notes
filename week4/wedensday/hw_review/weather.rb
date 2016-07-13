#weather api
require 'httparty'
require 'pry'
require 'json'

class Weathersummary
  include HTTParty
  base_uri "https://api.wunderground.com/api"
  def initialize(key, zipcode)
    @key = key
    @zipcode = zipcode
  end


  def current_conditions
    self.class.get("/#{@key}/conditions/q/#{@zipcode}.json")
  end


  def current_weather_10_day
    self.class.get("/#{@key}/forecast10day/q/#{@zipcode}.json")
  end


  def sunrise_sunset
    self.class.get("/#{@key}/astronomy/q/#{@zipcode}.json")
  end

  def weather_alerts
    self.class.get("/#{@key}/alerts/q/#{@zipcode}.json")
  end
end





#http://api.wunderground.com/api/06d952a02fe95bb3/conditions/q/CA/San_Francisco.json
