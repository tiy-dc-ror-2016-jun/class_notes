require_relative "test_helper"

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    AdventureGame
  end

  def test_can_create_a_vote
    current_user = User.create(token: SecureRandom.hex)

    response = post "/votes", name: "Pika for President", token: current_user.token

    payload = JSON.parse(response.body)

    assert_equal "Pika for President", payload["choice"]
    assert Vote.find(payload["id"])
  end


  def test_can_get_votes
    response = get "/votes"

    payload = JSON.parse(response.body)

    assert_equal Array, payload.class
    assert_equal "Pikachu for president" , payload.first["choice"]

  end
end
