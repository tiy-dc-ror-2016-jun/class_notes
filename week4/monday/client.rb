# https://api.github.com/users/rposborne/events
#
#
require 'uri'
require 'pry'
require 'json'
require 'net/http'

class GithubEvents
  attr_reader :github_username
  def initialize(github_username)
    @github_username = github_username
  end

  def fetch
    url = URI("https://api.github.com/users/#{github_username}/events")

    http = Net::HTTP.new(url.host, url.port)

    http.use_ssl = true

    req = Net::HTTP::Get.new(url)
    req["Authorization"] = "token #{ENV["GITHUB_TOKEN"]}"
    response = http.request(req)
    body = response.read_body

    JSON.parse(body)
  end
end


chris_events = GithubEvents.new("rposborne").fetch

binding.pry
