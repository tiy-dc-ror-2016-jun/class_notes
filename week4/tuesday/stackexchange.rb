# response = HTTParty.get('https://api.forecast.io/forecast/c841c27242dd50d1a1744bf123872c95/37.8267,-122.423')
require "httparty"
require "pry"


class StackExchange
  include HTTParty
  base_uri 'api.stackexchange.com'

  def initialize(service, page)
    @options = { query: {site: service, page: page} }
  end

  def questions
    self.class.get("/2.2/questions", @options)
  end

  def users
    self.class.get("/2.2/users", @options)
  end
end

binding.pry
