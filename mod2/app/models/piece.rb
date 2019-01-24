class Piece < ApplicationRecord
  has_many :clothing_outfits
  has_many :outfits, through: :clothing_outfits
  belongs_to :category
  belongs_to :user

  validates :name, presence: true

end
