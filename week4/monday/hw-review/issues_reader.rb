require 'uri'
require 'pry'
require 'json'
require './client'
require 'net/http'

class GitHubIssuesReader < Client
  attr_reader :repo_name
  attr_reader :repo_owner

  def initialize(repo_name,repo_owner)
    @repo_name = repo_name
    @repo_owner = repo_owner
  end

  def url
    URI("https://api.github.com/repos/#{repo_owner}/#{repo_name}/issues")
  end


  def build_request
    req = Net::HTTP::Get.new(url)
    req
  end
end
