require "application_system_test_case"

class UserdsTest < ApplicationSystemTestCase
  setup do
    @userd = userds(:one)
  end

  test "visiting the index" do
    visit userds_url
    assert_selector "h1", text: "Userds"
  end

  test "should create userd" do
    visit userds_url
    click_on "New userd"

    click_on "Create Userd"

    assert_text "Userd was successfully created"
    click_on "Back"
  end

  test "should update Userd" do
    visit userd_url(@userd)
    click_on "Edit this userd", match: :first

    click_on "Update Userd"

    assert_text "Userd was successfully updated"
    click_on "Back"
  end

  test "should destroy Userd" do
    visit userd_url(@userd)
    click_on "Destroy this userd", match: :first

    assert_text "Userd was successfully destroyed"
  end
end
