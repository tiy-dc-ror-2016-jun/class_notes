require 'uri'
require 'pry'
require 'json'
require 'net/http'

class GithubRepoMaker
  URL = URI("https://api.github.com/user/repos")

  attr_reader :repo_name
  def initialize(repo_name)
    @repo_name = repo_name

    @http = Net::HTTP.new(URL.host, URL.port)
    @http.use_ssl = true
  end

  def create_repo_now!
    req = build_request
    response = perform_request(req)
    parse_response(response)
  end

  private def build_request
    req = Net::HTTP::Post.new(URL)
    req.body = JSON.generate({name: repo_name}) # => { "name": "party_poodle" }
    req["Authorization"] = "token #{ENV["GITHUB_TOKEN"]}"
    req
  end

  private def parse_response(body)
    JSON.parse(body)
  end

  private def perform_request(request)
    @http.request(request).read_body
  end
end
