require 'minitest/autorun'
require 'minitest/pride'
require './issue_closer'
require 'pry'

class GitHubIssuesCloser
  def perform_request(args)
    File.read("./issues_closer.json")
  end
end

class IssuesCloserTest < Minitest::Test

  def test_we_can_close_issue
    patcher = GitHubIssuesCloser.new("close_your_issues","MartinDally","1")

    payload = patcher.perform
    assert_equal "closed", payload["state"]
  end
end
