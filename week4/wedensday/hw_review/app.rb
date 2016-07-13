require "./weather"

puts "Where do you want weather from?"
zip = gets.chomp

q = Weathersummary.new("06d952a02fe95bb3", zip)

forecast =  q.current_weather_10_day

weather_forecast_presentation = ""
forecast["forecast"]["txt_forecast"]["forecastday"].each do |daily_forecast|
  weather_forecast_presentation += "#{daily_forecast["title"]} : #{daily_forecast["fcttext"]}\n"
end

puts weather_forecast_presentation
