class User < ApplicationRecord
  has_many :pieces
  has_many :outfits

  validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates :password, length: {in: 6..20}


end
