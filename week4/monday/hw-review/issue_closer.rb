require 'uri'
require 'pry'
require 'json'
require 'net/http'

class GitHubIssuesCloser < Client
  attr_reader :repo_name
  attr_reader :repo_owner

  def initialize(repo_name,repo_owner,number)
    @repo_name = repo_name
    @repo_owner = repo_owner
    @issue_number = number
  end

  def url
    URI("https://api.github.com/repos/#{repo_owner}/#{repo_name}/issues/#{number}")
  end

  private def build_request
    close = {state: "closed"}
    close_json = JSON.generate(close)
    req = Net::HTTP::Patch.new(url)
    req.body = close_json
    req
  end
end
