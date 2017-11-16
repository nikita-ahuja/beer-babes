class Beer < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  validates :name, presence: true
  accepts_nested_attributes_for :reviews


  def self.search(input)
  	if input 
  		search = input.downcase
  	else 
  		search
  	end
    where("lower(name) LIKE ? OR lower(city) LIKE ? OR lower(brewery) LIKE ? OR lower(characteristic) LIKE ? OR lower(beer_style) LIKE ? OR lower(independent) LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
