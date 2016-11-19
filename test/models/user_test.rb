require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  u = user(:user_one)

  test "User must have firstname, lastname, weight, and height" do
    assert u.valid?
  end

  test "User has lifting data" do
    assert_equal(u.liftdatum.count, 1);
  end
end
