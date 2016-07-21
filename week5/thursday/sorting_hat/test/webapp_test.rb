require_relative "test_helper"

class WebappTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Webapp
  end

  def test_root_path_returns_button_to_pick_students
    response = get "/"

    assert_includes(response.body, "Pick Student")
  end

  def test_post_to_pick_student_returns_a_student_name
    user = User.create(name: "Erik")
    response = post "/pick"
    assert_equal 200, response.status
    assert_includes response.body, user.name
  end

  def test_can_display_edit_page_with_form_for_user
    user = User.create(name: "Erik")

    response = get "/users/#{user.id}/edit"

    assert_includes response.body, user.name
  end

  def test_can_update_user
    user = User.create(name: "Erik")

    response = patch "/users/#{user.id}", {"user" => {"name" => "Erik Douglas"}}

    updated_user = User.find(user.id)

    assert_equal 200, response.status
    assert_equal "Erik Douglas", updated_user.name
  end

  def teardown
    User.delete_all
  end

end
