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

  test "User has valid lifting data" do
    adeeb = users(:user_one)
    assert adeeb.liftdatum[0].valid?
    assert adeeb.liftdatum[1].valid?
  end

  # test "User can add lift data" do
  #   adeeb = users(:user_one)
  #   newlift = liftdata(:lift_three)
  #   adeeb.liftdatum[2].add_to_target(liftdata)
  #   assert_equal(adeeb.liftdatum.count, 3);
  # end
end
