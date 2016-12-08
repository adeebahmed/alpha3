require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "User must have firstname, lastname, weight, and height" do
    adeeb = users(:user_one)
    assert adeeb.valid?
  end

  test "User has lifting data" do
    adeeb = users(:user_one)
    assert_equal(adeeb.liftdatum.count, 2);
  end
end
