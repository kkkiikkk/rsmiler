require "test_helper"

class SdsasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sdsa = sdsas(:one)
  end

  test "should get index" do
    get sdsas_url
    assert_response :success
  end

  test "should get new" do
    get new_sdsa_url
    assert_response :success
  end

  test "should create sdsa" do
    assert_difference("Sdsa.count") do
      post sdsas_url, params: { sdsa: {  } }
    end

    assert_redirected_to sdsa_url(Sdsa.last)
  end

  test "should show sdsa" do
    get sdsa_url(@sdsa)
    assert_response :success
  end

  test "should get edit" do
    get edit_sdsa_url(@sdsa)
    assert_response :success
  end

  test "should update sdsa" do
    patch sdsa_url(@sdsa), params: { sdsa: {  } }
    assert_redirected_to sdsa_url(@sdsa)
  end

  test "should destroy sdsa" do
    assert_difference("Sdsa.count", -1) do
      delete sdsa_url(@sdsa)
    end

    assert_redirected_to sdsas_url
  end
end
