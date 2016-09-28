require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "User must have firstname" do
    user1 = User.new
    assert user.invalid?
  end

end
