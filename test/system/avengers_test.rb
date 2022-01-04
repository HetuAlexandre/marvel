require "application_system_test_case"

class AvengersTest < ApplicationSystemTestCase
  setup do
    @avenger = avengers(:one)
  end

  test "visiting the index" do
    visit avengers_url
    assert_selector "h1", text: "Avengers"
  end

  test "creating a Avenger" do
    visit avengers_url
    click_on "New Avenger"

    fill_in "Age", with: @avenger.age
    fill_in "Description", with: @avenger.description
    fill_in "Hero name", with: @avenger.hero_name
    fill_in "Real name", with: @avenger.real_name
    fill_in "Statut", with: @avenger.statut
    click_on "Create Avenger"

    assert_text "Avenger was successfully created"
    click_on "Back"
  end

  test "updating a Avenger" do
    visit avengers_url
    click_on "Edit", match: :first

    fill_in "Age", with: @avenger.age
    fill_in "Description", with: @avenger.description
    fill_in "Hero name", with: @avenger.hero_name
    fill_in "Real name", with: @avenger.real_name
    fill_in "Statut", with: @avenger.statut
    click_on "Update Avenger"

    assert_text "Avenger was successfully updated"
    click_on "Back"
  end

  test "destroying a Avenger" do
    visit avengers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Avenger was successfully destroyed"
  end
end
