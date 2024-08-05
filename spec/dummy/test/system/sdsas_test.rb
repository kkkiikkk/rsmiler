require "application_system_test_case"

class SdsasTest < ApplicationSystemTestCase
  setup do
    @sdsa = sdsas(:one)
  end

  test "visiting the index" do
    visit sdsas_url
    assert_selector "h1", text: "Sdsas"
  end

  test "should create sdsa" do
    visit sdsas_url
    click_on "New sdsa"

    click_on "Create Sdsa"

    assert_text "Sdsa was successfully created"
    click_on "Back"
  end

  test "should update Sdsa" do
    visit sdsa_url(@sdsa)
    click_on "Edit this sdsa", match: :first

    click_on "Update Sdsa"

    assert_text "Sdsa was successfully updated"
    click_on "Back"
  end

  test "should destroy Sdsa" do
    visit sdsa_url(@sdsa)
    click_on "Destroy this sdsa", match: :first

    assert_text "Sdsa was successfully destroyed"
  end
end
