require 'bundler/setup'
require 'minitest/autorun'
require 'minitest/pride'
require 'webmock/minitest'
require 'rack/test'

require './weather_underground_two'

class WeatherUndergroundTwoTest < Minitest::Test
  include Rack::Test::Methods

  def app
    WeatherUndergroundTwo
  end

  def test_classes_exist
    assert WeatherUndergroundTwo
    assert Weathersummary
  end

  def test_hello_world_endpoint_welcomes_the_cohort
    response = get("/hello_world")
    assert_equal "Hi Class", response.body
  end

  def test_weather_endpoint_gets_weather
    weather_for_20180 = File.read("ten_day_weather_for_20180.json")

    stub_request(:get, "https://api.wunderground.com/api/06d952a02fe95bb3/forecast10day/q/20180.json")
      .to_return(body: weather_for_20180, headers: {content_type: 'application/json'})


    response = get("/weather/for/zip/20180")
    assert_equal 200, response.status
    assert_includes( response.body, " Cloudy skies. A stray shower" )
  end
end
