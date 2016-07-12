require 'minitest/autorun'
require 'minitest/pride'
require './issues_reader'
require 'pry'

# class GitHubIssuesReader
#   def perform_request(args)
#     File.read("./issues_reader.json")
#   end
# end

class IssuesReaderTest < Minitest::Test

  def test_we_can_pull_issues
    puller = GitHubIssuesReader.new("close_your_issues","MartinDally")
    payload = puller.perform
    assert_equal "Lunch", payload[0]["title"]
    assert_equal "PokemonGO", payload[1]["title"]
  end
end
