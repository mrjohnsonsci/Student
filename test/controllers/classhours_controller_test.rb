require 'test_helper'

class ClasshoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classhour = classhours(:one)
  end

  test "should get index" do
    get classhours_url
    assert_response :success
  end

  test "should get new" do
    get new_classhour_url
    assert_response :success
  end

  test "should create classhour" do
    assert_difference('Classhour.count') do
      post classhours_url, params: { classhour: { hour: @classhour.hour, pupil_id: @classhour.pupil_id, user_id: @classhour.user_id } }
    end

    assert_redirected_to classhour_url(Classhour.last)
  end

  test "should show classhour" do
    get classhour_url(@classhour)
    assert_response :success
  end

  test "should get edit" do
    get edit_classhour_url(@classhour)
    assert_response :success
  end

  test "should update classhour" do
    patch classhour_url(@classhour), params: { classhour: { hour: @classhour.hour, pupil_id: @classhour.pupil_id, user_id: @classhour.user_id } }
    assert_redirected_to classhour_url(@classhour)
  end

  test "should destroy classhour" do
    assert_difference('Classhour.count', -1) do
      delete classhour_url(@classhour)
    end

    assert_redirected_to classhours_url
  end
end
