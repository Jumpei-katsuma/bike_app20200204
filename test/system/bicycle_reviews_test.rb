require "application_system_test_case"

class BicycleReviewsTest < ApplicationSystemTestCase
  setup do
    @bicycle_review = bicycle_reviews(:one)
  end

  test "visiting the index" do
    visit bicycle_reviews_url
    assert_selector "h1", text: "Bicycle Reviews"
  end

  test "creating a Bicycle review" do
    visit bicycle_reviews_url
    click_on "New Bicycle Review"

    fill_in "Bicycle", with: @bicycle_review.bicycle_id
    fill_in "End", with: @bicycle_review.end
    fill_in "Review text", with: @bicycle_review.review_text
    fill_in "Star", with: @bicycle_review.star
    fill_in "Start", with: @bicycle_review.start
    fill_in "User", with: @bicycle_review.user_id
    click_on "Create Bicycle review"

    assert_text "Bicycle review was successfully created"
    click_on "Back"
  end

  test "updating a Bicycle review" do
    visit bicycle_reviews_url
    click_on "Edit", match: :first

    fill_in "Bicycle", with: @bicycle_review.bicycle_id
    fill_in "End", with: @bicycle_review.end
    fill_in "Review text", with: @bicycle_review.review_text
    fill_in "Star", with: @bicycle_review.star
    fill_in "Start", with: @bicycle_review.start
    fill_in "User", with: @bicycle_review.user_id
    click_on "Update Bicycle review"

    assert_text "Bicycle review was successfully updated"
    click_on "Back"
  end

  test "destroying a Bicycle review" do
    visit bicycle_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bicycle review was successfully destroyed"
  end
end
