class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user, required: false
end
