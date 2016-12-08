require 'test_helper'

class LiftdatumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
	test "liftdata must have a user" do
	liftdata = liftdata(:lift_one)
	assert_equal liftdata.user.firstname, "Adeeb"
  end

  test "liftdata must have weight data" do
  	liftdata = liftdata(:lift_one)
  	assert liftdata.valid?
  end

end
