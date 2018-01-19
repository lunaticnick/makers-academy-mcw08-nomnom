require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
    @restaurant = Restaurant.create({name: "restaurant", description: "test place"})
  end

  def review_url(review)
    "/restaurants/#{review.restaurant.id}/reviews/#{review.id}"
  end

  def reviews_url
    "/restaurants/#{@restaurant.id}/reviews"
  end

  test "should get index" do
    get reviews_url
    assert_response :success
  end

  # test "should get new" do
  #   get new_restaurant_review_url
  #   assert_response :success
  # end
  #
  # test "should create review" do
  #   assert_difference('Review.count') do
  #     post reviews_url, params: { review: { comments: @review.comments, rating: @review.rating } }
  #   end
  #
  #   assert_redirected_to restaurant_url(@restaurant)
  # end

  # test "should show review" do
  #   get review_url(@review)
  #   assert_response :success
  # end
  #
  # test "should get edit" do
  #   get edit_review_url(@review)
  #   assert_response :success
  # end
  #
  # test "should update review" do
  #   patch review_url(@review), params: { review: { comments: @review.comments, rating: @review.rating } }
  #   assert_redirected_to review_url(@review)
  # end
  #
  # test "should destroy review" do
  #   assert_difference('Review.count', -1) do
  #     delete review_url(@review)
  #   end
  #
  #   assert_redirected_to reviews_url
  # end
end
