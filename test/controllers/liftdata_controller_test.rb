require 'test_helper'

class LiftdataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liftdatum = liftdata(:one)
  end

  test "should get index" do
    get liftdata_url
    assert_response :success
  end

  test "should get new" do
    get new_liftdatum_url
    assert_response :success
  end

  test "should create liftdatum" do
    assert_difference('Liftdatum.count') do
      post liftdata_url, params: { liftdatum: { exercise: @liftdatum.exercise, rep: @liftdatum.rep, set: @liftdatum.set, weight: @liftdatum.weight } }
    end

    assert_redirected_to liftdatum_url(Liftdatum.last)
  end

  test "should show liftdatum" do
    get liftdatum_url(@liftdatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_liftdatum_url(@liftdatum)
    assert_response :success
  end

  test "should update liftdatum" do
    patch liftdatum_url(@liftdatum), params: { liftdatum: { exercise: @liftdatum.exercise, rep: @liftdatum.rep, set: @liftdatum.set, weight: @liftdatum.weight } }
    assert_redirected_to liftdatum_url(@liftdatum)
  end

  test "should destroy liftdatum" do
    assert_difference('Liftdatum.count', -1) do
      delete liftdatum_url(@liftdatum)
    end

    assert_redirected_to liftdata_url
  end
end
