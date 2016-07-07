require_relative 'test_helper'

class GroupTest < Minitest::Test

  def test_group_has_no_students_by_default
    simpsons = Group.create(name: "Simpsons")
    assert_equal [], simpsons.students
  end

  def test_group_has_students
    simpsons = Group.create(name: "Simpsons")
    homer = Student.create(name: "Homer Simpson")

    simpsons.students << homer

    assert_equal [homer], simpsons.students
  end

end
