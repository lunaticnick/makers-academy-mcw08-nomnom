module RestaurantsHelper
  def not_already_reviewed?
    @restaurant.reviews.select { |review| review.user == current_user }.empty?
  end
end
