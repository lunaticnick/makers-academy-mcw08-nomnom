class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true,
                   length: { minimum: 3 }
  validates :description, presence: true,
                          length: { minimum: 10 }
end
