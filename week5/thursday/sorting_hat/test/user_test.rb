require_relative "test_helper"

class UserTest < Minitest::Test

  def test_can_record_pick
    user = User.create(name: "Chris")

    user.record_pick!

    assert_equal 1, user.picks.count
  end

  def teardown
    User.delete_all
    Pick.delete_all
  end

end
