require "bundler/setup"
require "sinatra/base"
require "pry"
require "./hw_review/weather.rb"
require "./weather_forecast_presentor"

class WeatherUndergroundTwo < Sinatra::Base

  get "/hello_world" do
    "Hi Class"
  end

  get "/weather/for/zip/:zipcode" do
    WeatherForecastPresentor.new(params["zipcode"]).generate
  end

  run! if app_file == $0
end
