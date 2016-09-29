require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "User must have firstname, lastname, weight, and height" do
    u = User.new
    assert u.invalid?
  end

  test "User has lifting data" do
    u = user(:user_one)
    assert_equal(user.liftdatum.count, 2)
end
