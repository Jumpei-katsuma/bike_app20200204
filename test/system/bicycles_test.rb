require "application_system_test_case"

class BicyclesTest < ApplicationSystemTestCase
  setup do
    @bicycle = bicycles(:one)
  end

  test "visiting the index" do
    visit bicycles_url
    assert_selector "h1", text: "Bicycles"
  end

  test "creating a Bicycle" do
    visit bicycles_url
    click_on "New Bicycle"

    fill_in "Age", with: @bicycle.age
    fill_in "Category", with: @bicycle.category
    fill_in "Description", with: @bicycle.description
    fill_in "End", with: @bicycle.end
    fill_in "Image", with: @bicycle.image
    fill_in "Location", with: @bicycle.location
    fill_in "Owner", with: @bicycle.owner_id
    fill_in "Price", with: @bicycle.price
    fill_in "Size", with: @bicycle.size
    fill_in "Start", with: @bicycle.start
    click_on "Create Bicycle"

    assert_text "Bicycle was successfully created"
    click_on "Back"
  end

  test "updating a Bicycle" do
    visit bicycles_url
    click_on "Edit", match: :first

    fill_in "Age", with: @bicycle.age
    fill_in "Category", with: @bicycle.category
    fill_in "Description", with: @bicycle.description
    fill_in "End", with: @bicycle.end
    fill_in "Image", with: @bicycle.image
    fill_in "Location", with: @bicycle.location
    fill_in "Owner", with: @bicycle.owner_id
    fill_in "Price", with: @bicycle.price
    fill_in "Size", with: @bicycle.size
    fill_in "Start", with: @bicycle.start
    click_on "Update Bicycle"

    assert_text "Bicycle was successfully updated"
    click_on "Back"
  end

  test "destroying a Bicycle" do
    visit bicycles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bicycle was successfully destroyed"
  end
end
