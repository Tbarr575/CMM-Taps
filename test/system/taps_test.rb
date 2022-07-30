require "application_system_test_case"

class TapsTest < ApplicationSystemTestCase
  setup do
    @tap = taps(:one)
  end

  test "visiting the index" do
    visit taps_url
    assert_selector "h1", text: "Taps"
  end

  test "should create tap" do
    visit taps_url
    click_on "New tap"

    fill_in "Drink", with: @tap.drink_id
    fill_in "Floor", with: @tap.floor
    fill_in "Grouping", with: @tap.grouping
    fill_in "Location", with: @tap.location
    click_on "Create Tap"

    assert_text "Tap was successfully created"
    click_on "Back"
  end

  test "should update Tap" do
    visit tap_url(@tap)
    click_on "Edit this tap", match: :first

    fill_in "Drink", with: @tap.drink_id
    fill_in "Floor", with: @tap.floor
    fill_in "Grouping", with: @tap.grouping
    fill_in "Location", with: @tap.location
    click_on "Update Tap"

    assert_text "Tap was successfully updated"
    click_on "Back"
  end

  test "should destroy Tap" do
    visit tap_url(@tap)
    click_on "Destroy this tap", match: :first

    assert_text "Tap was successfully destroyed"
  end
end
