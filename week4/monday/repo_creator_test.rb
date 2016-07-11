require 'minitest/autorun'
require 'minitest/pride'
require './repo_creator'

class GithubRepoMaker
  def perform_request(args)
    File.read("./test/create_repo.json")
  end
end

class RepoCreatorTest < Minitest::Test

  def test_we_can_create_a_repo
    maker = GithubRepoMaker.new("party_poodle")

    payload = maker.create_repo_now!

    assert_equal "party_poodle", payload["name"]
  end
end
