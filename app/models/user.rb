class User < ApplicationRecord
  has_many :reviews
  has_many :beers, through: :reviews

  validates :username, :email, :password, :light_rating, :dark_rating, :hoppy_rating, presence: true

  validates :password, length: { minimum: 6 }
  validates_uniqueness_of :username, :email, :case_sensitive => false

  has_secure_password
end
