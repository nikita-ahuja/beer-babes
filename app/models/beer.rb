class Beer < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  validates :name, presence: true
  accepts_nested_attributes_for :reviews


  def self.search(search)
    where("name LIKE ? OR city LIKE ? OR brewery LIKE ? OR characteristic LIKE ? OR beer_style LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
