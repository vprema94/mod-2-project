class Piece < ApplicationRecord
  has_many :clothing_outfits
  has_many :outfits, through: :clothing_outfits
  belongs_to :category

  validates :name, presence: true

  # def inititialize()
  #   clean level = 0
  # end
end
