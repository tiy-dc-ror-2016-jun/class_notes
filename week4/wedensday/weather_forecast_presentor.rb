class WeatherForecastPresentor
  attr_reader :zip
  def initialize(zip)
    @zip = zip
  end

  def generate
    q = Weathersummary.new("06d952a02fe95bb3", zip)
    forecast = q.current_weather_10_day

    weather_forecast_presentation = ""
    forecast["forecast"]["txt_forecast"]["forecastday"].each do |daily_forecast|
      weather_forecast_presentation += "
      <strong>#{daily_forecast["title"]}</strong> : #{daily_forecast["fcttext"]}<br>
      "
    end

    weather_forecast_presentation
  end
end
