require "application_system_test_case"

class FightersTest < ApplicationSystemTestCase
  setup do
    @fighter = fighters(:one)
  end

  test "visiting the index" do
    visit fighters_url
    assert_selector "h1", text: "Fighters"
  end

  test "should create Fighter" do
    visit fighters_url
    click_on "New Fighter"

    fill_in "First name", with: @fighter.first_name
    fill_in "Last name", with: @fighter.last_name
    fill_in "Weight class", with: @fighter.weight_class
    click_on "Create Fighter"

    assert_text "Fighter was successfully created"
    click_on "Back"
  end

  test "should update Fighter" do
    visit fighters_url
    click_on "Edit", match: :first

    fill_in "First name", with: @fighter.first_name
    fill_in "Last name", with: @fighter.last_name
    fill_in "Weight class", with: @fighter.weight_class
    click_on "Update Fighter"

    assert_text "Fighter was successfully updated"
    click_on "Back"
  end

  test "should destroy Fighter" do
    visit fighters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fighter was successfully destroyed"
  end
end
