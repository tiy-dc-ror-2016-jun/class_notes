require_relative 'test_helper'

class VoteTest < Minitest::Test
  def test_vote_exists
    assert Vote
  end

  def test_vote_can_be_created
    pika = Vote.create!(choice: "Pikachu for president")
    assert pika.valid?
  end
end
