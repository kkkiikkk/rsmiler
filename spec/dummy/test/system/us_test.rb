require "application_system_test_case"

class UsTest < ApplicationSystemTestCase
  setup do
    @u = us(:one)
  end

  test "visiting the index" do
    visit us_url
    assert_selector "h1", text: "Us"
  end

  test "should create u" do
    visit us_url
    click_on "New u"

    click_on "Create U"

    assert_text "U was successfully created"
    click_on "Back"
  end

  test "should update U" do
    visit u_url(@u)
    click_on "Edit this u", match: :first

    click_on "Update U"

    assert_text "U was successfully updated"
    click_on "Back"
  end

  test "should destroy U" do
    visit u_url(@u)
    click_on "Destroy this u", match: :first

    assert_text "U was successfully destroyed"
  end
end
