require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "User must have firstname, lastname, weight, and height" do
    adeeb = User.new(:user_one)
    assert adeeb.valid?
  end

  # test "User has lifting data" do
  #   assert_equal(adeeb.liftdatum.count, 1);
  # end
end
