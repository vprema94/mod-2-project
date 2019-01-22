class User < ApplicationRecord
  has_many :pieces
  has_many :outfits
end
