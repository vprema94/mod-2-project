class User < ApplicationRecord
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates :password, length: {in: 6..20}


end
