require_relative 'test_helper'

class StudentTest < Minitest::Test

  def test_github_url_is_a_url
    erik = Student.new(name: "Erik", github_username: "test")
    assert_equal("https://github.com/test", erik.github_url)
  end

  def test_github_url_is_a_url_with_no_github_username
    erik = Student.new(name: "Erik")
    assert_equal(nil, erik.github_url)
  end
end
