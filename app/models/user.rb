class User < ApplicationRecord
  has_many :reviews
  has_many :beers, through: :reviews

  validates :username, :email, :password, presence: true
  validates :email, uniqueness: true

  has_secure_password
end
