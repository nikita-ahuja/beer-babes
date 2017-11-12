class Beer < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  validates :name, presence: true

  def self.search(search)
    where("name LIKE ? OR city LIKE ? OR brewery LIKE ? OR category LIKE ? OR style LIKE ? OR independent LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
