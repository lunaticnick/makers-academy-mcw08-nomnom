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

  test "should create review" do
    assert_difference('Review.count') do
      post restaurant_reviews_url(@restaurant), params: { review: { comments: @review.comments, rating: @review.rating } }
    end

    assert_redirected_to restaurant_url(@restaurant)
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete restaurant_review_url(@restaurant, @review)
    end

    assert_redirected_to restaurant_url(@restaurant)
  end
end
