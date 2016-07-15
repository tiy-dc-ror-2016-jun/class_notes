require "minitest/autorun"
require "minitest/pride"
require "./forecast"
require 'webmock/minitest'

class ForecastTest < Minitest::Test

  def test_can_fetch_weather
    response = File.read("./test/weather_for_38_77.json")

    stub_request(
      :get,
      "https://api.forecast.io/forecast/c841c27242dd50d1a1744bf123872c95/38.9059168,-77.0425075"
    ).to_return(body: response, headers: { content_type: "application/json"})

    f = Forecast.new("c841c27242dd50d1a1744bf123872c95", 38.9059168, -77.0425075)

    weather_as_hash = f.forecast
    assert_equal Hash, weather_as_hash.parsed_response.class
    assert_equal "Mostly Cloudy", weather_as_hash["currently"]["summary"]

  end

end
