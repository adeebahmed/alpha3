require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "User must have firstname" do
    u = User.new
    assert u.invalid?
  end

end
