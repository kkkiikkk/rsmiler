require "application_system_test_case"

class ProductdsdsasTest < ApplicationSystemTestCase
  setup do
    @productdsdsa = productdsdsas(:one)
  end

  test "visiting the index" do
    visit productdsdsas_url
    assert_selector "h1", text: "Productdsdsas"
  end

  test "should create productdsdsa" do
    visit productdsdsas_url
    click_on "New productdsdsa"

    click_on "Create Productdsdsa"

    assert_text "Productdsdsa was successfully created"
    click_on "Back"
  end

  test "should update Productdsdsa" do
    visit productdsdsa_url(@productdsdsa)
    click_on "Edit this productdsdsa", match: :first

    click_on "Update Productdsdsa"

    assert_text "Productdsdsa was successfully updated"
    click_on "Back"
  end

  test "should destroy Productdsdsa" do
    visit productdsdsa_url(@productdsdsa)
    click_on "Destroy this productdsdsa", match: :first

    assert_text "Productdsdsa was successfully destroyed"
  end
end
