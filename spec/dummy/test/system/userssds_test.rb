require "application_system_test_case"

class UserssdsTest < ApplicationSystemTestCase
  setup do
    @userssd = userssds(:one)
  end

  test "visiting the index" do
    visit userssds_url
    assert_selector "h1", text: "Userssds"
  end

  test "should create userssd" do
    visit userssds_url
    click_on "New userssd"

    click_on "Create Userssd"

    assert_text "Userssd was successfully created"
    click_on "Back"
  end

  test "should update Userssd" do
    visit userssd_url(@userssd)
    click_on "Edit this userssd", match: :first

    click_on "Update Userssd"

    assert_text "Userssd was successfully updated"
    click_on "Back"
  end

  test "should destroy Userssd" do
    visit userssd_url(@userssd)
    click_on "Destroy this userssd", match: :first

    assert_text "Userssd was successfully destroyed"
  end
end
