require "minitest/autorun"
require "minitest/pride"
require "./weather"
require "webmock/minitest"


class ForecastTest < Minitest::Test
  def test_can_get_weather
    response = File.read("./weather_10_day_data.json")
    stub_request(:get,
    "https://api.wunderground.com/api/06d952a02fe95bb3/forecast10day/q/20330.json")
    .to_return(body: response, headers: { content_type: "application/json"})
    q = Weathersummary.new("06d952a02fe95bb3", 20330)
    weather_as_hash = q.current_weather_10_day
    assert_equal Hash, weather_as_hash.parsed_response.class
    assert_equal "2:39 PM EDT", weather_as_hash["forecast"]["txt_forecast"]["date"]
  end
end
