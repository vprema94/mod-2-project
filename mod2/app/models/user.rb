class User < ApplicationRecord
  has_many :pieces
  has_many :outfits

  has_secure_password

  validates :username, uniqueness: true
  validates :email, uniqueness: true

end
