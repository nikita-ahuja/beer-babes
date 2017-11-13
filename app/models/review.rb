class Review < ApplicationRecord
	belongs_to :beer
  belongs_to :user

  validates :user_id, :beer_id, :rating, presence: true

  validates :user_id, uniqueness: {scope: [:beer_id]}
  # validates_uniqueness_of :user_id, :scope => :beer_id
end
