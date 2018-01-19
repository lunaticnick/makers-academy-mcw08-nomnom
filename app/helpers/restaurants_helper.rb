module RestaurantsHelper
  def not_already_reviewed?
    @restaurant.reviews.select { |review| review.user == current_user }.empty?
  end

  def stars(rating)
    '<div class="star-rating-display">' +
      '<div class="top-stars" style="width: ' + (rating * 20).to_s + '%"><span>★</span><span>★</span><span>★</span><span>★</span><span>★</span></div>' +
      '<div class="bottom-stars"><span>★</span><span>★</span><span>★</span><span>★</span><span>★</span></div>' +
    '</div>'
  end
end
