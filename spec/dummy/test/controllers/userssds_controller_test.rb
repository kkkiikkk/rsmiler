require "test_helper"

class UserssdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userssd = userssds(:one)
  end

  test "should get index" do
    get userssds_url
    assert_response :success
  end

  test "should get new" do
    get new_userssd_url
    assert_response :success
  end

  test "should create userssd" do
    assert_difference("Userssd.count") do
      post userssds_url, params: { userssd: {  } }
    end

    assert_redirected_to userssd_url(Userssd.last)
  end

  test "should show userssd" do
    get userssd_url(@userssd)
    assert_response :success
  end

  test "should get edit" do
    get edit_userssd_url(@userssd)
    assert_response :success
  end

  test "should update userssd" do
    patch userssd_url(@userssd), params: { userssd: {  } }
    assert_redirected_to userssd_url(@userssd)
  end

  test "should destroy userssd" do
    assert_difference("Userssd.count", -1) do
      delete userssd_url(@userssd)
    end

    assert_redirected_to userssds_url
  end
end
