require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "user_count" do
    assert_equal 4, User.count
  end

  test "user_commens_count" do
    user = User.find(920767132)
    comments = user.comments
    assert_equal 3, comments.count
  end

  test "user_must_have_a_city" do
    user = User.new
    assert_not user.save
  end

  test "user_must_have_a_state" do
    user = User.new
    assert_not user.save
  end

  test "user_must_have_a_zip_code" do
    user = User.new
    assert_not user.save
  end
end
