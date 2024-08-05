require "application_system_test_case"

class UserssesTest < ApplicationSystemTestCase
  setup do
    @userss = usersses(:one)
  end

  test "visiting the index" do
    visit usersses_url
    assert_selector "h1", text: "Usersses"
  end

  test "should create userss" do
    visit usersses_url
    click_on "New userss"

    click_on "Create Userss"

    assert_text "Userss was successfully created"
    click_on "Back"
  end

  test "should update Userss" do
    visit userss_url(@userss)
    click_on "Edit this userss", match: :first

    click_on "Update Userss"

    assert_text "Userss was successfully updated"
    click_on "Back"
  end

  test "should destroy Userss" do
    visit userss_url(@userss)
    click_on "Destroy this userss", match: :first

    assert_text "Userss was successfully destroyed"
  end
end
