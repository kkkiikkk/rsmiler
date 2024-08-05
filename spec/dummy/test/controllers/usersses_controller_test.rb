require "test_helper"

class UserssesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userss = usersses(:one)
  end

  test "should get index" do
    get usersses_url
    assert_response :success
  end

  test "should get new" do
    get new_userss_url
    assert_response :success
  end

  test "should create userss" do
    assert_difference("Userss.count") do
      post usersses_url, params: { userss: {  } }
    end

    assert_redirected_to userss_url(Userss.last)
  end

  test "should show userss" do
    get userss_url(@userss)
    assert_response :success
  end

  test "should get edit" do
    get edit_userss_url(@userss)
    assert_response :success
  end

  test "should update userss" do
    patch userss_url(@userss), params: { userss: {  } }
    assert_redirected_to userss_url(@userss)
  end

  test "should destroy userss" do
    assert_difference("Userss.count", -1) do
      delete userss_url(@userss)
    end

    assert_redirected_to usersses_url
  end
end
