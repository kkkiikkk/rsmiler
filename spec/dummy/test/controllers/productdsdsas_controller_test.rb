require "test_helper"

class ProductdsdsasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productdsdsa = productdsdsas(:one)
  end

  test "should get index" do
    get productdsdsas_url
    assert_response :success
  end

  test "should get new" do
    get new_productdsdsa_url
    assert_response :success
  end

  test "should create productdsdsa" do
    assert_difference("Productdsdsa.count") do
      post productdsdsas_url, params: { productdsdsa: {  } }
    end

    assert_redirected_to productdsdsa_url(Productdsdsa.last)
  end

  test "should show productdsdsa" do
    get productdsdsa_url(@productdsdsa)
    assert_response :success
  end

  test "should get edit" do
    get edit_productdsdsa_url(@productdsdsa)
    assert_response :success
  end

  test "should update productdsdsa" do
    patch productdsdsa_url(@productdsdsa), params: { productdsdsa: {  } }
    assert_redirected_to productdsdsa_url(@productdsdsa)
  end

  test "should destroy productdsdsa" do
    assert_difference("Productdsdsa.count", -1) do
      delete productdsdsa_url(@productdsdsa)
    end

    assert_redirected_to productdsdsas_url
  end
end
