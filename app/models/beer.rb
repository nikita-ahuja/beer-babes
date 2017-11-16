class Beer < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  validates :name, presence: true
  accepts_nested_attributes_for :reviews


  def self.search(search)
    # where("name LIKE ? OR city LIKE ? OR brewery LIKE ? OR characteristic LIKE ? OR beer_style LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    where("lower(name) LIKE ? OR lower(city) LIKE ? OR lower(brewery) LIKE ? OR lower(characteristic) LIKE ? OR lower(beer_style) LIKE ? OR lower(independent) LIKE ?", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%")
  end

end
