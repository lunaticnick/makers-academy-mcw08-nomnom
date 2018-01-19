class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user, required: false
  validates_presence_of :rating
end
