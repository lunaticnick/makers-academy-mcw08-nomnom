class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :user, required: false
  validates_presence_of :name, :description
  validates_length_of :description, :maximum => 500
  def average_rating
      reviews.length > 0 ? (20*(reviews.map{|review| review.rating }.sum.to_f) / reviews.length).round(2) : 0
  end
end
