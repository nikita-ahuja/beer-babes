class Review < ApplicationRecord
	belongs_to :beer
  belongs_to :user

 	validates :user_id, :rating, presence: true

  validates :user, uniqueness: {scope: :beer}
  # validates_uniqueness_of :user_id, :scope => [:beer_id]
end