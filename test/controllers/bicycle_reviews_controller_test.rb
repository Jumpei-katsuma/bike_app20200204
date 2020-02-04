require 'test_helper'

class BicycleReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicycle_review = bicycle_reviews(:one)
  end

  test "should get index" do
    get bicycle_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_bicycle_review_url
    assert_response :success
  end

  test "should create bicycle_review" do
    assert_difference('BicycleReview.count') do
      post bicycle_reviews_url, params: { bicycle_review: { bicycle_id: @bicycle_review.bicycle_id, end: @bicycle_review.end, review_text: @bicycle_review.review_text, star: @bicycle_review.star, start: @bicycle_review.start, user_id: @bicycle_review.user_id } }
    end

    assert_redirected_to bicycle_review_url(BicycleReview.last)
  end

  test "should show bicycle_review" do
    get bicycle_review_url(@bicycle_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_bicycle_review_url(@bicycle_review)
    assert_response :success
  end

  test "should update bicycle_review" do
    patch bicycle_review_url(@bicycle_review), params: { bicycle_review: { bicycle_id: @bicycle_review.bicycle_id, end: @bicycle_review.end, review_text: @bicycle_review.review_text, star: @bicycle_review.star, start: @bicycle_review.start, user_id: @bicycle_review.user_id } }
    assert_redirected_to bicycle_review_url(@bicycle_review)
  end

  test "should destroy bicycle_review" do
    assert_difference('BicycleReview.count', -1) do
      delete bicycle_review_url(@bicycle_review)
    end

    assert_redirected_to bicycle_reviews_url
  end
end
