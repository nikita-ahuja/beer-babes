class User < ApplicationRecord
  has_many :reviews
  has_many :beers, through: :reviews

  validates :username, :email, :password, presence: true

  validates_uniqueness_of :username, :email, :case_sensitive => false

  has_secure_password
end
