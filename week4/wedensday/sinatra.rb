require "bundler/setup"
require "sinatra/base"
require "pry"
require "./hw_review/weather.rb"

class WeatherUndergroundTwo < Sinatra::Base

  get "/hello_world" do
    binding.pry
    "Hi Class"
  end

  get "/zipcode" do
    q = Weathersummary.new("06d952a02fe95bb3", params["zip"])
    forecast = q.current_weather_10_day

    weather_forecast_presentation = ""
    forecast["forecast"]["txt_forecast"]["forecastday"].each do |daily_forecast|
      weather_forecast_presentation += "
      <strong>#{daily_forecast["title"]}</strong> : #{daily_forecast["fcttext"]}<br>
      "
    end

    weather_forecast_presentation
  end

  run! if app_file == $0
end
