require "application_system_test_case"

class ProductdsTest < ApplicationSystemTestCase
  setup do
    @productd = productds(:one)
  end

  test "visiting the index" do
    visit productds_url
    assert_selector "h1", text: "Productds"
  end

  test "should create productd" do
    visit productds_url
    click_on "New productd"

    click_on "Create Productd"

    assert_text "Productd was successfully created"
    click_on "Back"
  end

  test "should update Productd" do
    visit productd_url(@productd)
    click_on "Edit this productd", match: :first

    click_on "Update Productd"

    assert_text "Productd was successfully updated"
    click_on "Back"
  end

  test "should destroy Productd" do
    visit productd_url(@productd)
    click_on "Destroy this productd", match: :first

    assert_text "Productd was successfully destroyed"
  end
end
